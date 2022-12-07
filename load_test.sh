#!/bin/bash

for i in {1..2000}; do
    curl 20.103.149.105/dan 2>/dev/null > load_test.log
done

