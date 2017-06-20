#!/bin/sh
set -e

if [ "$MODE" = "TEST1" ]; then
    exec python "test1.py"
elif [ "$MODE" = "TEST2" ]; then
    exec python "test2.py"
else
    exec python "helloworld.py"
fi
