#!/bin/bash

find . \( -type d -name .git -prune \) -o \( -type f -not -name 'tasks.json' \) -print0 | xargs -0 sed -i "s/mortgage_simulator/$1/g"

mv mortgage_simulator $1