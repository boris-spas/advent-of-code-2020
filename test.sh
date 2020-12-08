#!/usr/bin/env bash

set -eax

test $(awk -f 01/solve01.awk 01/input) -eq 181044
test $(awk -f 01/solve02.awk 01/input) -eq 82660352

test $(awk -f 02/solve01.awk 02/input) -eq 536
test $(awk -f 02/solve02.awk 02/input) -eq 558

test $(awk -f 03/solve01.awk 03/input) -eq 292
test $(awk -f 03/solve02.awk 03/input) -eq 9354744432

test $(awk -f 04/solve01.awk 04/input) -eq 228
test $(awk -f 04/solve02.awk 04/input) -eq 175

test $(awk -f 05/solve01.awk 05/input) -eq 866
test $(awk -f 05/solve02.awk 05/input) -eq 583

test $(awk -f 06/solve01.awk 06/input) -eq 6297
test $(awk -f 06/solve02.awk 06/input) -eq 3158
