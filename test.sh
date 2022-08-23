#!/bin/bash

if [ `curl http://34.239.134.80 | grep "502 Bad Gateway"` ]
then
  echo "All is well"
else
  echo "All is not well"
  exit 1
fi

