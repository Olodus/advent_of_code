#!/bin/bash
mkdir -p Day"$AOC_DAY"
curl https://adventofcode.com/"$AOC_YEAR"/day/"$AOC_DAY"/input --cookie "session=$AOC_SESSION" > Day"$AOC_DAY"/input.txt
