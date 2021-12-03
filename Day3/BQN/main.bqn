# Read input
input ← •file.At ⊑ •args
lines ← •FLines input

# Part 1
AvgBit ← {(⌈2÷˜≠𝕩)⊸≤¨+¨´'0'-˜¨¨𝕩}
BinaryToDecimal ← {+´×˝(2⊸⋆¨⌽↕≠𝕩)≍𝕩}
part1 ← BinaryToDecimal AvgBit lines
•Show part1
