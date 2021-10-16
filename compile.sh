#!/bin/bash
# compilation script for posix-compliant systems

src=src
dist=bin

lib=$(echo lib/*)
lib=${lib// /:}

mkdir -p $dist
javac -d $dist -cp $lib $(find $src -name "*.java")
