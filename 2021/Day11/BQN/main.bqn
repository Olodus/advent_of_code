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
Step ← {𝕩++´¨10≤¨⥊¨<⎉2 3‿3↕(0 SurroundMatrix (𝕨+¨𝕩))}
FinalizeStep ← {𝕩×10≥𝕩} 
NrFlashes ← {+´10≤¨⥊𝕩}
NewFlashes ← {(NrFlashes 0⊸Step 𝕩) > NrFlashes 𝕩}
FullStep ← {
    NewFlashes 0⊑𝕩 ?
    ⟨0⊸Step 0⊑𝕩, 1⊑𝕩,2⊑𝕩⟩ ;
    ⟨1⊸Step FinalizeStep 0⊑𝕩, (1⊑𝕩) + NrFlashes (0⊑𝕩),(2⊑𝕩)-1⟩
}
Iteration ← {(2⊑𝕩) > 0 ? Iteration FullStep 𝕩 ; 𝕩}

state ← ⟨1⊸Step DigitArray ParseInt¨lines,0,2⟩
•Show "Part 1 answer:"
#•Show Iteration state
•Show FullStep state

