#!/bin/sh

rm -r pkg/stage

mkdir -p pkg/stage/usr/local/bin
mkdir -p pkg/stage/usr/local/etc

cp src/hello.sh         pkg/stage/usr/local/bin/hello
cp hello.env.sample     pkg/stage/usr/local/etc/hello.env.sample

pkg create -M pkg/manifest.ucl -p pkg/pkg-plist -r pkg/stage -v
