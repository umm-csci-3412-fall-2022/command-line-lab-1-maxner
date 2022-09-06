#!/bin/sh

int=$1

tar xf NthPrime.tgz

cd NthPrime || exit

gcc *.c -o NthPrime

./NthPrime "$int"
