#!/bin/bash

sleep 5

curl localhost | grep Henry 2>&1 >/dev/null
if [ $? -eq 0 ] ; then
  printf "Passed!\n"
  exit 0
else
  printf "Failed!\n"
  exit 1
fi
