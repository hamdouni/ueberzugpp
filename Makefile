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
	@sudo apt-get install libssl-dev libvips-dev libsixel-dev libchafa-dev libtbb-dev libxcb-res0-dev libxcb-image0-dev


install: build
	@echo "installing..."
	@cp -f build/ueberzugpp ${BIN}/
	@ln -sf ${BIN}/ueberzugpp ${BIN}/ueberzug

uninstall:
	@rm -f /usr/local/bin/ueberzug
	@rm -f /usr/local/bin/ueberzugpp

