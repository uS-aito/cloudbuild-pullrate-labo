#!/bin/bash

for i in `seq 1 150`
do
    echo "$i th commit."
    sed "s/NUMBER/$i/" main.sh.tmp > main.sh
    git add .
    git commit -m "$i th commit."
    git push
done