#!/bin/sh

cp src/hello.sh pkg/stage/usr/local/bin/hello
cp hello.env pkg/stage/usr/local/etc/hello.env.sample

pkg create -M pkg/manifest.ucl -r pkg/stage -p pkg/pkg-plist