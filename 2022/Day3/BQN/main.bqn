input ← •file.At ⊑ •args
lines ← •FLines input

SplitByCompartment←{⟨((≠𝕩)÷2)↑𝕩,((≠𝕩)÷2)↓𝕩⟩}
Doubles←{(/∊´⟨0⊑𝕩,1⊑𝕩⟩)⊏0⊑𝕩}
Prio←{'`'⊸>◶⟨-⟜'`',26+-⟜'@'⟩𝕩}
•Show +´Prio¨⊑¨Doubles∘SplitByCompartment¨lines

TeamTag←{⊑Doubles Doubles¨⟨∾⟨0⊏𝕩,1⊏𝕩⟩,∾⟨0⊏𝕩,2⊏𝕩⟩⟩}
•Show +´Prio¨TeamTag¨<˘⟨∘,3,1⟩⥊lines
