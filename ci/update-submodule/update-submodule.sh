#!/usr/bin/env bash

git clone ./repo ./out
cd out
git config --global user.email "shu.920921@gmail.com"
git config --global user.name "cappyzawa"
git submodule update --recursive
git add .
git commit -m "update submodule" --allow-empty
