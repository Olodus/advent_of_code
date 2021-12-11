# Read input
input ← •file.At ⊑ •args
lines ← •FLines input

# Parse array of number strings to numbers
ParseInt ← {+´×˝(10⊸⋆¨⌽↕≠𝕩)≍(∾´(-⟜"0")¨𝕩)}

PrependMatrix←{((≠⍉𝕩)⥊𝕨)∾𝕩}
SurroundMatrix ← {⍉⌽⍉𝕨 PrependMatrix 1⌽⍉𝕨 PrependMatrix ⌽(𝕨 PrependMatrix ⍉(𝕨 PrependMatrix 𝕩))}
LowPoints ← {𝕩×𝕩=⊑¨∧¨⥊¨<⎉2 3‿3↕(∞ SurroundMatrix 𝕩)}

•Show "Part 1 answer:"
•Show 0⊸<⊑LowPoints a
