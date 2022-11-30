# Read input
input ← •file.At ⊑ •args
lines ← •FLines input

# Part 1
AvgBit ← {(⌈2÷˜≠𝕩)⊸≤¨+¨´'0'-˜¨¨𝕩}
BinaryToDecimal ← {+´×˝(2⊸⋆¨⌽↕≠𝕩)≍𝕩}
gamma ← BinaryToDecimal AvgBit lines
epsilon ← BinaryToDecimal ¬¨ AvgBit lines
•Show "Answer Part 1:"
•Show gamma × epsilon

# Part 2
## More clear way to handle input
CharValArr ← {'0'-˜¨𝕩}
bin_arrs ← CharValArr lines

## Takes either ≤ or ≥ and checks if sum is larger than half of length
## This results in either above or below average
#bit_criteria ← {(+´𝕩)𝕎((≠𝕩)÷2)}
oxygen_criteria ← {(+´𝕩)≤((≠𝕩)÷2)}
co2_criteria ← {(+´𝕩)≥((≠𝕩)÷2)}

## Now we mostly have what we need.
## I think what is needed from here is to mapping over bitindex
## with a function that (chose ↩) with matches of what comes out of the criteria function.
lsr_filter ← {
    chose ← ↕≠𝕩
    criteria ← 𝕎
    helper ← {(criteria 𝕩⊏¨(𝕨⊏bit_arrs)) ⊐ 𝕨}
    chose⊸helper´↕5
    chose⊏input
}
oxygen ← oxygen_criteria⊸lsr_filter input
co2  ← co2_criteria⊸lsr_filter input

## Both final arrays should only have 1 binary number left, assert on this
!1=≠oxygen
!1=≠co2

•Show "Answer Part 2:"
•Show "Oxygen:"
•Show BinaryToDecimal oxygen
•Show "CO2:"
•Show BinaryToDecimal co2
•Show "Life Support Rating:"
•Show (BinaryToDecimal oxygen) × (BinaryToDecimal co2)

CharValArr ← {'0'-˜¨𝕩}
bin_arrs ← CharValArr ⟨"00100", "11110","11011"⟩
chose ← ↕≠bin_arrs
chosen←chose⊏bin_arrs
bin_cols←⟨≠ chosen,5⟩⥊∾chosen
bit_criteria←{((≠bin_cols)÷2)≤(+˝bin_cols)}
