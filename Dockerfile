FROM ubuntu:24.04@sha256:008173c23f95b170204355c12626cb5a965d779a7e1283b09e9cffbb1bf33ca3
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends g++ make python3 binutils util-linux \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY Makefile ./
COPY src/ ./src/
COPY include/ ./include/
COPY scripts/ ./scripts/
RUN make -B CXX=g++
CMD ["python3", "scripts/medir.py", "--linux", "--output-dir", "/resultados", "--name", "mediciones_docker"]
