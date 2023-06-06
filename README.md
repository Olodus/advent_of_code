# Advent of Code
My solutions to AoC for the years:

- 2021
- 2022

## TODO

[ ] Integrate my 2019 and 2020 repos into this repo.
    Nice to have everything in one place.
[ ] Make everything follow the directory structure.
    All should follow: Year/Day/Lang/SolutionVersion/
    - Year
      Only have directories in it for each day of that year.
    - Day
      Includes "input.txt", "test_input.txt", "answer.txt" and "output" (not yet decided what format this will be in).
    - Lang/SolutionVersion
      Maybe these should be merged to one thing. There might be situations where it could be nice to have one implementation but several output versions (maybe try different lang or lib versions against each other) so the output shouldn't have to be tied to the "SolutionVersion" folder.
[ ] Unified build + run + verify system.
    Probably want to do the builds in Nix. Running it can be in anything, but probably something with a good benchmark framework (see next item below).
[ ] Benchmark for comparisons.
    Run and then output data over the solutions per language and different solutions in the languages.
