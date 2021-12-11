# Read input
input ← •file.At ⊑ •args
lines ← •FLines input

# Parse array of number strings to numbers
ParseInt ← {(∾´(-⟜"0")¨𝕩)}
DigitArray←{(≠𝕩)‿(≠⊑𝕩)⥊∾´𝕩}

# Surrounding a matrix on all sides with a given number
# This is used to get proper kernels for the days tasks
PrependMatrix←{((≠⍉𝕩)⥊𝕨)∾𝕩}
SurroundMatrix ← {⍉⌽⍉𝕨 PrependMatrix 1⌽⍉𝕨 PrependMatrix ⌽(𝕨 PrependMatrix ⍉(𝕨 PrependMatrix 𝕩))}

# Part 1 functions
LowPoints ← {𝕩=⊑¨∧¨⥊¨<⎉2 3‿3↕(∞ SurroundMatrix 𝕩)}
RiskLevels ← {⊑1⊸+¨((-⟜1¨LowPoints 𝕩) ⊔ 𝕩)}

•Show "Part 1 answer:"
•Show +´RiskLevels DigitArray ParseInt¨lines

kernel ←3‿3⥊⟨∞,1,∞,1,1,1,∞,1,∞⟩
Basins ← {2≥¨+´¨𝕩≥¨∧¨⥊¨kernel⊸+¨<⎉2 3‿3↕(∞ SurroundMatrix 𝕩)}

•Show "Part 2 answer:"
•Show Basins DigitArray ParseInt¨lines

