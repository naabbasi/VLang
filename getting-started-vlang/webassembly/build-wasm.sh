#!/bin/sh

v -b wasm main.v -o ../../build-wasm/helloworld.wasm

#v -b wasm -no-builtin functions.v -o ../../build-wasm/functions.wasm
v -b wasm functions.v -o ../../build-wasm/functions.wasm
