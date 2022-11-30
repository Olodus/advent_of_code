#!/bin/bash
mkdir -p "$AOC_YEAR"/Day"$AOC_DAY"
curl https://adventofcode.com/"$AOC_YEAR"/day/"$AOC_DAY"/input --cookie "session=$AOC_SESSION" > "$AOC_YEAR"/Day"$AOC_DAY"/input.txt
