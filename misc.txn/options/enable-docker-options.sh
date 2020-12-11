#!/bin/bash

cd /compile/source/linux-stable-tx

for i in `cat /compile/doc/stable-tx/misc.txn/options/docker-options-mod.txt`; do
  echo $i
  ./scripts/config -m $i
done

for i in `cat /compile/doc/stable-tx/misc.txn/options/docker-options-yes.txt`; do
  echo $i
  ./scripts/config -e $i
done
