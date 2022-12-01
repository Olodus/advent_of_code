input ← •file.At ⊑ •args
lines ← •FLines input

CharValArr ← {'0'-˜¨𝕩}
Decimal ← {+´(⌽10⊸⋆¨↕≠𝕩)×𝕩}
ParseInt ← {+´×˝(10⊸⋆¨⌽↕≠𝕩)≍(∾´(-⟜"0")¨𝕩)}
list←Decimal¨CharValArr¨lines
Group←{(¬¨0⍷𝕩)(¬-˜⊢×·+`»⊸>)⊸⊔𝕩}
kcals←+´¨ Group list
•Show "Most kcals carried:"
•Show ⊑∨kcals
•Show "Top 3 most kcals carried:"
•Show 3↑∨kcals
•Show "Sum Top 3 most kcals carried:"
•Show +´3↑∨kcals
