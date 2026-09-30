CXX ?= g++
CPPFLAGS += -Iinclude
CXXFLAGS ?= -O2 -ffp-contract=off -std=c++17 -Wall -Wextra -pedantic
VISUAL_DELAY ?= 180
DOCKER_PLATFORM ?= linux/arm64
DOCKER_IMAGE ?= incendio-ic:practica2
DOCKER_RESULTS ?= resultados_docker
REPORT_DIR ?= resultados_vectorizacion
SOURCES := src/main.cpp src/opciones.cpp src/simulacion.cpp src/estadisticas.cpp src/terminal.cpp
HEADERS := include/modelo.h include/opciones.h include/simulacion.h include/estadisticas.h include/terminal.h

.PHONY: all run visual clean check vectorization docker-build docker-measure docker-vectorization
all: incendio
# Cada .cpp se compila como unidad independiente; los .h son dependencias de reconstrucción.
incendio: $(SOURCES) $(HEADERS)
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) $(SOURCES) -o incendio
run: incendio
	./incendio --measure --rows 1600 --cols 1600 --steps 160
visual: incendio
	./incendio --visual --rows 20 --cols 48 --steps 70 --delay $(VISUAL_DELAY)
check: incendio
	python3 scripts/check.py
clean:
	rm -f incendio
vectorization:
	mkdir -p "$(REPORT_DIR)"
	@set -e; for source in $(SOURCES); do \
		stem=$${source##*/}; stem=$${stem%.cpp}; \
		$(CXX) $(CPPFLAGS) -O3 -ffp-contract=off -std=c++17 -fverbose-asm -fopt-info-vec-optimized-missed -S "$$source" -o "$(REPORT_DIR)/$${stem}_O3.s" 2> "$(REPORT_DIR)/$${stem}_O3.txt"; \
		$(CXX) $(CPPFLAGS) -O3 -march=native -ffp-contract=off -std=c++17 -fverbose-asm -fopt-info-vec-optimized-missed -S "$$source" -o "$(REPORT_DIR)/$${stem}_native.s" 2> "$(REPORT_DIR)/$${stem}_native.txt"; \
		nl -ba "$$source" > "$(REPORT_DIR)/$${stem}_numerado.txt"; \
	done
	cat $(foreach source,$(notdir $(SOURCES)),"$(REPORT_DIR)/$(source:.cpp=_O3.txt)") > "$(REPORT_DIR)/vectorizacion.txt"
	cat $(foreach source,$(notdir $(SOURCES)),"$(REPORT_DIR)/$(source:.cpp=_native.txt)") > "$(REPORT_DIR)/vectorizacion_native.txt"
	$(CXX) --help=optimizers > "$(REPORT_DIR)/optimizers.txt"
	$(CXX) --help=target > "$(REPORT_DIR)/target.txt"
docker-build:
	docker build --platform $(DOCKER_PLATFORM) -t $(DOCKER_IMAGE) .
docker-measure: docker-build
	mkdir -p "$(DOCKER_RESULTS)"
	docker image inspect $(DOCKER_IMAGE) --format '{{.Id}} {{.Architecture}}' > "$(DOCKER_RESULTS)/imagen.txt"
	docker version > "$(DOCKER_RESULTS)/docker_version.txt"
	docker run --rm --platform $(DOCKER_PLATFORM) --cpus=2 --memory=2g --mount "type=bind,source=$(CURDIR)/$(DOCKER_RESULTS),target=/resultados" $(DOCKER_IMAGE)
docker-vectorization: docker-build
	mkdir -p "$(DOCKER_RESULTS)"
	docker run --rm --platform $(DOCKER_PLATFORM) --cpus=2 --memory=2g --mount "type=bind,source=$(CURDIR)/$(DOCKER_RESULTS),target=/resultados" $(DOCKER_IMAGE) make vectorization CXX=g++ REPORT_DIR=/resultados/vectorizacion_modular
