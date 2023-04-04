#!/bin/sh

wasmer helloworld.wasm && \
wasmer functions.wasm -i _start && \
wasmer functions.wasm -i main.powi 2 8 && \
wasmer functions.wasm -i main.gcd 2 8
