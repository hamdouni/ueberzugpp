.PHONY: all build clean deps install

PREFIX=/usr/local
BIN=${PREFIX}/bin

all: build

.ONESHELL:
build:
	@echo "building..."
	@mkdir -p build
	@cd build
	@cmake -DCMAKE_BUILD_TYPE=Release -DENABLE_OPENCV=OFF ..
	@cmake --build .

clean:
	@echo "cleaning..."
	@rm -rf build

deps:
	@sudo apt-get install libssl-dev libvips-dev libsixel-dev libchafa-dev libtbb-dev

install: build
	@echo "installing..."
	@cp build/ueberzugpp ${BIN}/
	@ln -s ${BIN}/ueberzugpp ${BIN}/ueberzug

uninstall:
	@rm -f /usr/local/bin/ueberzug
	@rm -f /usr/local/bin/ueberzugpp

