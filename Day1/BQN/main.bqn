# Read input
input←•file.At ⊑ •args
lines←•FLines input

# Parse array of number strings to numbers
numbers←+´¨×˝((10⊸⋆)¨(⌽↕)¨≠¨lines)≍(∾´¨((-⟜"0")¨¨lines))

# Part 1 solution
NrIncreases←{+´<´⟨(((≠𝕩)-1)↑𝕩),(1↓𝕩)⟩}
part1←NrIncreases(numbers)
•Show "Answer Part 1:"
•Show part1

# Part 2 solution
# This is a horribly wasteful solution, but it works and is kinda ok in the beauty department so I'll keep it for now
ThreePartSum←{+´×˝(»⍟𝕩⟨1,1,1⟩∾(0×¨↕((≠𝕨)-3)))≍𝕨}
AllThreeSums←{𝕩⊸ThreePartSum¨↕((≠𝕩)-2)}
part2v1←NrIncreases(AllThreeSums(numbers))
•Show "Answer Part 2 v1:"
•Show part2v1

# Aaand then I learned about Windows, less code and muuuuch faster
# But I'll keep the old code as learning
part2v2←NrIncreases (+˝⍉3↕numbers)
•Show "Answer Part 2 v2:"
•Show part2v2
