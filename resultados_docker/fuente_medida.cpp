#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <iomanip>
#include <iostream>
#include <limits>
#include <random>
#include <sstream>
#include <stdexcept>
#include <string>
#include <thread>
#include <vector>
#include <csignal>
#include <sys/ioctl.h>
#include <termios.h>
#include <unistd.h>

using namespace std;
enum State : uint8_t { EMPTY, TREE, FIRE, BURNT, WATER };
struct Cell { float moisture; uint8_t fuel, state; };
struct Options {
    size_t rows=30, cols=60, steps=80;
    uint32_t seed=42;
    float moisture=.28f, wind=.6f;
    int dx=1, dy=0;
    string direction="E";
    size_t fire_row=numeric_limits<size_t>::max(), fire_col=numeric_limits<size_t>::max();
    bool visual=false, profile=false, ascii=false, color=true, fire_set=false, keyboard=false, paused=false;
    unsigned delay=180;
};
volatile sig_atomic_t interrupted=0;
void on_signal(int) { interrupted=1; }
struct TerminalInput {
    termios saved{};
    bool enabled=false;
    explicit TerminalInput(bool visual) {
        if(!visual || !isatty(STDIN_FILENO) || tcgetattr(STDIN_FILENO,&saved)) return;
        termios mode=saved;
        mode.c_lflag &= static_cast<tcflag_t>(~(ICANON|ECHO));
        mode.c_cc[VMIN]=0;
        mode.c_cc[VTIME]=0;
        enabled=tcsetattr(STDIN_FILENO,TCSANOW,&mode)==0;
    }
    ~TerminalInput() {if(enabled) tcsetattr(STDIN_FILENO,TCSANOW,&saved);}
};

size_t number(const string& s, const string& name) {
    if (s.empty() || s[0]=='-') throw invalid_argument("Valor inválido para " + name);
    try {
        size_t p=0; unsigned long long v=stoull(s,&p);
        if (p!=s.size() || v>numeric_limits<size_t>::max()) throw invalid_argument("");
        return static_cast<size_t>(v);
    } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
}
float decimal(const string& s, const string& name) {
    try {
        size_t p=0; float v=stof(s,&p);
        if (p!=s.size() || !isfinite(v)) throw invalid_argument("");
        return v;
    } catch(const exception&) { throw invalid_argument("Valor inválido para " + name); }
}
void help() {
    cout << "Incendio secuencial C++17. Coordenadas de base 0.\n"
         << "--rows N --cols N --steps N --seed N --moisture X [0,1]\n"
         << "--wind-dir N|NE|E|SE|S|SW|W|NW --wind X [0,1]\n"
         << "--fire-row N --fire-col N --visual|--measure|--profile --delay MS --ascii --no-color\n"
         << "--profile: diagnóstico de tiempos por fase, separado de la medición habitual.\n"
         << "En modo visual: + acelera, - frena, espacio pausa, n avanza un paso, q termina.\n"
         << "Por defecto: 30x60, 80 pasos, semilla 42, humedad .28, viento E .6, foco (filas/2,columnas/5), medición; pausa visual 180 ms.\n";
}
Options parse(int argc, char** argv) {
    Options o;
    for (int i=1;i<argc;++i) {
        string a=argv[i];
        if (a=="--help") { help(); exit(0); }
        if (a=="--visual") { o.visual=true; continue; }
        if (a=="--measure") { o.visual=false; continue; }
        if (a=="--profile") { o.profile=true; continue; }
        if (a=="--ascii") { o.ascii=true; continue; }
        if (a=="--no-color") { o.color=false; continue; }
        if (i+1>=argc) throw invalid_argument("Falta valor para " + a);
        string v=argv[++i];
        if (a=="--rows") o.rows=number(v,a);
        else if (a=="--cols") o.cols=number(v,a);
        else if (a=="--steps") o.steps=number(v,a);
        else if (a=="--seed") { auto n=number(v,a); if(n>UINT32_MAX) throw invalid_argument("Semilla fuera de rango"); o.seed=static_cast<uint32_t>(n); }
        else if (a=="--moisture") o.moisture=decimal(v,a);
        else if (a=="--wind") o.wind=decimal(v,a);
        else if (a=="--fire-row") {o.fire_row=number(v,a);o.fire_set=true;}
        else if (a=="--fire-col") {o.fire_col=number(v,a);o.fire_set=true;}
        else if (a=="--delay") { auto n=number(v,a); if(n>60000) throw invalid_argument("--delay debe estar en [0,60000]"); o.delay=static_cast<unsigned>(n); }
        else if (a=="--wind-dir") {
            o.direction=v;
            const string dirs[]={"N","NE","E","SE","S","SW","W","NW"};
            const int xs[]={0,1,1,1,0,-1,-1,-1}, ys[]={-1,-1,0,1,1,1,0,-1};
            bool ok=false; for(int k=0;k<8;++k) if(v==dirs[k]) {o.dx=xs[k];o.dy=ys[k];ok=true;break;}
            if(!ok) throw invalid_argument("Dirección de viento: N, NE, E, SE, S, SW, W o NW");
        } else throw invalid_argument("Opción desconocida: " + a);
    }
    if(o.profile && o.visual) throw invalid_argument("--profile no se combina con --visual");
    if (!o.rows || !o.cols || !o.steps) throw invalid_argument("Filas, columnas e iteraciones deben ser positivas");
    if (o.rows>numeric_limits<size_t>::max()/o.cols || o.rows*o.cols>numeric_limits<vector<Cell>::difference_type>::max()/2)
        throw invalid_argument("Dimensiones demasiado grandes");
    if (o.moisture<0 || o.moisture>1 || o.wind<0 || o.wind>1) throw invalid_argument("Humedad y viento deben estar en [0,1]");
    if (o.fire_row==numeric_limits<size_t>::max()) o.fire_row=o.rows/2;
    if (o.fire_col==numeric_limits<size_t>::max()) o.fire_col=o.cols/5;
    if (o.fire_row>=o.rows || o.fire_col>=o.cols) throw invalid_argument("Foco fuera del terreno (coordenadas desde 0)");
    return o;
}
size_t index(size_t r,size_t c,size_t cols) { return r*cols+c; }
vector<Cell> initialize(const Options& o) {
    vector<Cell> cells(o.rows*o.cols);
    mt19937 rng(o.seed);
    uniform_real_distribution<float> u(0,1);
    for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
        float x=(static_cast<float>(c)+.5f)/o.cols, y=(static_cast<float>(r)+.5f)/o.rows;
        bool lake=pow((x-.72f)/.105f,2)+pow((y-.55f)/.16f,2)<1;
        float z=u(rng), wet=u(rng);
        Cell &a=cells[index(r,c,o.cols)];
        a.state=lake?WATER:(z<.12f?EMPTY:TREE);
        a.fuel=a.state==TREE?static_cast<uint8_t>(3+static_cast<int>(u(rng)*4)):0;
        a.moisture=a.state==TREE?clamp(o.moisture+(wet-.5f)*.16f,0.f,1.f):0;
    }
    Cell &focus=cells[index(o.fire_row,o.fire_col,o.cols)];
    if(!o.fire_set && focus.state!=WATER) {focus.state=TREE;focus.fuel=5;focus.moisture=o.moisture;}
    if(focus.state!=TREE || !focus.fuel) throw invalid_argument("El foco cae sobre agua o un claro: elige otra celda con vegetación");
    focus.state=FIRE;
    return cells;
}
// A: solo lee actual; define la humedad de todas las celdas de siguiente.
void update_moisture(const vector<Cell>& current, vector<Cell>& next, size_t rows,size_t cols) {
    for(size_t r=0;r<rows;++r) for(size_t c=0;c<cols;++c) {
        size_t i=index(r,c,cols);
        if(current[i].state!=TREE && current[i].state!=FIRE) {next[i].moisture=current[i].moisture;continue;}
        int burning=0;
        for(int dr=-1;dr<=1;++dr) for(int dc=-1;dc<=1;++dc) {
            if(!dr && !dc) continue;
            auto rr=static_cast<long long>(r)+dr, cc=static_cast<long long>(c)+dc;
            if(rr>=0 && cc>=0 && static_cast<size_t>(rr)<rows && static_cast<size_t>(cc)<cols)
                burning += current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),cols)].state==FIRE;
        }
        next[i].moisture=max(0.f,current[i].moisture-.006f-.012f*burning);
    }
}
// B: lee exclusivamente el buffer actual; define estado y combustible de siguiente.
size_t update_fire(const vector<Cell>& current, vector<Cell>& next, const Options& o) {
    size_t active=0;
    for(size_t r=0;r<o.rows;++r) for(size_t c=0;c<o.cols;++c) {
        size_t i=index(r,c,o.cols);
        const Cell &a=current[i]; Cell &b=next[i];
        b.state=a.state; b.fuel=a.fuel;
        if(a.state==FIRE) { b.fuel=static_cast<uint8_t>(a.fuel-1); if(!b.fuel) b.state=BURNT; }
        else if(a.state==TREE) {
            float influence=0;
            for(int dr=-1;dr<=1;++dr) for(int dc=-1;dc<=1;++dc) {
                if(!dr && !dc) continue;
                auto rr=static_cast<long long>(r)+dr, cc=static_cast<long long>(c)+dc;
                if(rr<0 || cc<0 || static_cast<size_t>(rr)>=o.rows || static_cast<size_t>(cc)>=o.cols) continue;
                if(current[index(static_cast<size_t>(rr),static_cast<size_t>(cc),o.cols)].state!=FIRE) continue;
                float len=(dr && dc)? .70710678f:1.f;
                // (dc,dr) apunta del vecino en llamas a esta celda.
                float alignment=(-dc*o.dx-dr*o.dy)*len*((o.dx && o.dy)?.70710678f:1.f);
                influence += len*(1.f+o.wind*alignment);
            }
            if(influence>=.65f+1.2f*a.moisture) b.state=FIRE;
        }
        active += b.state==FIRE;
    }
    return active;
}
struct Stats { size_t count[5]={}; double mean=0; size_t affected=0; };
Stats statistics(const vector<Cell>& cells, size_t initial_trees) {
    Stats s;
    for(const auto& a:cells) {++s.count[a.state]; if(a.state==TREE) s.mean+=a.moisture;}
    if(s.count[TREE]) s.mean/=s.count[TREE];
    s.affected=initial_trees-s.count[TREE];
    return s;
}
uint64_t checksum(const vector<Cell>& cells) {
    uint64_t h=1469598103934665603ULL;
    for(const auto& a:cells) {
        uint32_t m; static_assert(sizeof(m)==sizeof(a.moisture));
        memcpy(&m,&a.moisture,sizeof(m));
        for(unsigned v:{static_cast<unsigned>(a.state),static_cast<unsigned>(a.fuel),m}) {
            for(int j=0;j<4;++j) {h^=(v>>(j*8))&255u; h*=1099511628211ULL;}
        }
    }
    return h;
}
string percent(size_t n,size_t total) { return to_string((100*n)/total)+"%"; }
string glyph(const Cell& a,bool ascii,bool color) {
    const char* symbols_ascii[]={". ","T ","* ","# ","~ "};
    const char* symbols[]={"· ","♣ ","▓ ","░ ","≈ "};
    const char* colors[]={"\033[37m","\033[32m","\033[33;1m","\033[90m","\033[34;1m"};
    string s=ascii?symbols_ascii[a.state]:symbols[a.state];
    if(color) return string(colors[a.state])+s+"\033[0m";
    return s;
}
void draw(const vector<Cell>& cells,const Options& o,size_t step,size_t initial_trees,bool tty) {
    winsize ws{}; if(tty) ioctl(STDOUT_FILENO,TIOCGWINSZ,&ws);
    size_t width=ws.ws_col?ws.ws_col:100, height=ws.ws_row?ws.ws_row:40;
    bool side=width>=2*min(o.cols,size_t(35))+52;
    size_t shown_cols=min(o.cols,max(size_t(1),(width-(side?52:4))/2));
    size_t shown_rows=min(o.rows,max(size_t(1),height-(side?5:(o.keyboard?18:17))));
    size_t r0= o.fire_row>shown_rows/2? min(o.fire_row-shown_rows/2,o.rows-shown_rows):0;
    size_t c0= o.fire_col>shown_cols/2? min(o.fire_col-shown_cols/2,o.cols-shown_cols):0;
    auto s=statistics(cells,initial_trees);
    size_t filled=10*s.affected/initial_trees;
    string bar="["; for(size_t k=0;k<10;++k) bar+=(k<filled?(o.ascii?"#":"█"):(o.ascii?"-":"░")); bar+="]";
    string arrow;
    if(o.ascii) arrow=o.direction;
    else {
        const string dirs[]={"N","NE","E","SE","S","SW","W","NW"};
        const string arrows[]={"↑","↗","→","↘","↓","↙","←","↖"};
        for(int k=0;k<8;++k) if(o.direction==dirs[k]) arrow=arrows[k];
    }
    vector<string> info={"Paso "+to_string(step)+" / "+to_string(o.steps),
        "Viento "+arrow+(o.ascii?"":" "+o.direction)+"  "+to_string(o.wind),
        "Humedad media: "+(s.count[TREE]?to_string(s.mean):string("no aplica")),
        "Estados / total "+to_string(cells.size()),
        "Vegetación "+to_string(s.count[TREE])+" ("+percent(s.count[TREE],cells.size())+")",
        "Ardiendo   "+to_string(s.count[FIRE])+" ("+percent(s.count[FIRE],cells.size())+")",
        "Quemado    "+to_string(s.count[BURNT])+" ("+percent(s.count[BURNT],cells.size())+")",
        "Agua "+to_string(s.count[WATER])+" ("+percent(s.count[WATER],cells.size())+")  Vacío "+to_string(s.count[EMPTY])+" ("+percent(s.count[EMPTY],cells.size())+")",
        "Inicial afectada: "+to_string(s.affected)+"/"+to_string(initial_trees)+" ("+percent(s.affected,initial_trees)+")",
        bar+" del bosque inicial",
        "T vegetación  * fuego", "# quemado  ~ agua  . vacío"};
    if(o.keyboard) {
        info.push_back(to_string(o.delay)+" ms "+(o.paused?"[PAUSA] ":"")+"+/- rapidez");
        info.push_back("espacio pausa  n paso  q salir");
    }
    string tl=o.ascii?"+":"╭",tr=o.ascii?"+":"╮",bl=o.ascii?"+":"╰",br=o.ascii?"+":"╯",hz=o.ascii?"-":"─",vt=o.ascii?"|":"│";
    ostringstream out;
    out<<tl; for(size_t c=0;c<shown_cols*2;++c) out<<hz; out<<tr;
    if(side) out<<"  Incendio forestal";
    out<<'\n';
    for(size_t r=0;r<shown_rows;++r) {
        out<<vt;
        for(size_t c=0;c<shown_cols;++c) out<<glyph(cells[index(r+r0,c+c0,o.cols)],o.ascii,o.color&&tty);
        out<<vt; if(side && r<info.size()) out<<"  "<<info[r]; out<<'\n';
    }
    out<<bl; for(size_t c=0;c<shown_cols*2;++c) out<<hz; out<<br<<'\n';
    if(r0 || c0 || shown_rows<o.rows || shown_cols<o.cols) {
        if(tty && width<60) out<<"Vista: f"<<r0<<"-"<<r0+shown_rows-1<<" c"<<c0<<"-"<<c0+shown_cols-1<<'\n';
        else out<<"Vista recortada: filas "<<r0<<".."<<r0+shown_rows-1<<", columnas "<<c0<<".."<<c0+shown_cols-1<<"\n";
    }
    if(!side) for(const auto& line:info) out<<line<<'\n';
    else for(size_t k=shown_rows;k<info.size();++k) out<<info[k]<<'\n';
    if(tty) {
        cout<<"\033[H";
        for(char ch:out.str()) {if(ch=='\n') cout<<"\033[K\n"; else cout<<ch;}
        cout<<"\033[J";
    } else cout<<out.str();
    cout.flush();
}
bool wait_frame(Options& o, TerminalInput& input, const vector<Cell>& cells, size_t step, size_t initial_trees) {
    if(!input.enabled) {
        if(o.delay) this_thread::sleep_for(chrono::milliseconds(o.delay));
        return !interrupted;
    }
    auto deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);
    while(!interrupted) {
        char key;
        bool changed=false;
        while(read(STDIN_FILENO,&key,1)==1) {
            if(key=='q' || key=='Q') return false;
            if(key==' '){o.paused=!o.paused;changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
            if(key=='n' || key=='N') {if(o.paused) return true;}
            if(key=='+'){o.delay=o.delay>50?o.delay-50:0;changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
            if(key=='-'){o.delay=min(60000u,o.delay+50);changed=true;deadline=chrono::steady_clock::now()+chrono::milliseconds(o.delay);}
        }
        if(changed) draw(cells,o,step,initial_trees,true);
        if(!o.paused && chrono::steady_clock::now()>=deadline) return true;
        this_thread::sleep_for(chrono::milliseconds(15));
    }
    return false;
}
int main(int argc,char** argv) {
    bool cursor_hidden=false;
    try {
        Options o=parse(argc,argv);
        auto current=initialize(o), next=vector<Cell>(current.size());
        size_t initial_trees=1;
        for(const auto& a:current) initial_trees+=a.state==TREE;
        bool tty=isatty(STDOUT_FILENO);
        TerminalInput input(o.visual && tty);
        o.keyboard=input.enabled;
        signal(SIGINT,on_signal); signal(SIGTERM,on_signal);
        if(o.visual) {if(tty) {cout<<"\033[2J\033[H\033[?25l";cursor_hidden=true;} draw(current,o,0,initial_trees,tty);}
        auto start=chrono::steady_clock::now();
        chrono::duration<double> visual_work{0};
        chrono::duration<double> moisture_work{0}, fire_work{0};
        size_t executed=0, active_steps=0;
        bool stopped=false;
        for(size_t step=0;step<o.steps && !interrupted;++step) {
            if(o.visual && tty && !wait_frame(o,input,current,executed,initial_trees)) {stopped=!interrupted;break;}
            auto work_start=(o.visual || o.profile)?chrono::steady_clock::now():chrono::steady_clock::time_point{};
            update_moisture(current,next,o.rows,o.cols);
            auto moisture_end=o.profile?chrono::steady_clock::now():chrono::steady_clock::time_point{};
            size_t active=update_fire(current,next,o);
            if(o.profile) {
                auto fire_end=chrono::steady_clock::now();
                moisture_work+=moisture_end-work_start;
                fire_work+=fire_end-moisture_end;
            }
            current.swap(next);
            if(o.visual) visual_work+=chrono::steady_clock::now()-work_start;
            ++executed;
            if(o.visual) {
                if(active) ++active_steps;
                if(tty || step+1==o.steps || !active) draw(current,o,executed,initial_trees,tty);
                if(!active) break;
            } else {
                active_steps+=active!=0;
            }
        }
        auto end=chrono::steady_clock::now();
        if(cursor_hidden) {cout<<"\033[?25h";cursor_hidden=false;}
        auto s=statistics(current,initial_trees);
        cout<<fixed<<setprecision(6)
            <<"Resumen: "<<o.rows<<"x"<<o.cols<<"="<<current.size()<<" celdas; semilla="<<o.seed
            <<"; humedad="<<o.moisture<<"; viento="<<o.direction<<":"<<o.wind
            <<"; foco=("<<o.fire_row<<","<<o.fire_col<<")\n"
            <<"Iteraciones="<<executed<<"; con fuego al terminar="<<active_steps
            <<"; tiempo_bucle_s="<<(o.visual?visual_work.count():chrono::duration<double>(end-start).count())<<"\n"
            <<"Final: vegetación="<<s.count[TREE]<<" fuego="<<s.count[FIRE]<<" quemado="<<s.count[BURNT]
            <<" agua="<<s.count[WATER]<<" vacío="<<s.count[EMPTY]<<"; inicial_afectada="<<s.affected<<"/"<<initial_trees
            <<"; checksum="<<hex<<checksum(current)<<dec<<"\n";
        cout<<"Memoria: cell_bytes="<<sizeof(Cell)<<"; buffers_bytes="
            <<2.0*current.size()*sizeof(Cell)<<"; quemado_pct_total="<<100.0*s.count[BURNT]/current.size()
            <<"; afectado_pct_bosque="<<100.0*s.affected/initial_trees<<"\n";
        if(o.profile) cout<<"Diagnóstico: humedad_s="<<moisture_work.count()<<"; fuego_s="<<fire_work.count()
            <<"; resto_s="<<max(0.0,chrono::duration<double>(end-start).count()-moisture_work.count()-fire_work.count())<<"\n";
        if(interrupted) {cerr<<"Interrumpido tras "<<executed<<" iteraciones\n";return 130;}
        if(stopped) cout<<"Fin visual: detenido con q.\n";
        if(o.visual && !s.count[FIRE]) cout<<"Fin visual: fuego extinguido.\n";
    } catch(const bad_alloc&) {if(cursor_hidden) cout<<"\033[?25h"; cerr<<"Error: memoria insuficiente\n";return 1;}
      catch(const length_error&) {if(cursor_hidden) cout<<"\033[?25h";cerr<<"Error: dimensiones demasiado grandes para reservar memoria\n";return 1;}
      catch(const exception& e) {if(cursor_hidden) cout<<"\033[?25h";cerr<<"Error: "<<e.what()<<". Usa --help.\n";return 1;}
}
