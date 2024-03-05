.PHONY: all build clean install

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

install: build
	@echo "installing..."
	@cp build/ueberzugpp ${BIN}/
	@ln -s ${BIN}/ueberzugpp ${BIN}/ueberzug

