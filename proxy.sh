#!/usr/bin/env bash

mkfifo inout
nc -l 127.0.0.1 -p 12345 < inout | tee /dev/tty | nc 127.0.0.1 80 | tee /dev/tty > inout
