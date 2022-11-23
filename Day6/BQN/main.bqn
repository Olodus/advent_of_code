lines ← •FLines ⊑ •args
parseInt←{(10⊸×⊸+˜´∘⌽-⟜'0')}
input←parseInt¨','((⊢-˜¬×+`)∘=⊔⊢) ∾ ⊏ lines
initial_state ← input⊸{+´𝕩⍷𝕨}¨↕9

New ← {(⊏𝕩)«𝕩}
Reset ← {⟨0,0,0,0,0,0,0,⊑𝕩,0⟩+𝕩}
NewDay ← {New Reset 𝕩}

•Show "After 80 days there would be this many lanternfish:"
•Show +´ NewDay⍟80 initial_state

•Show "After 256 days there would be this many lanternfish:"
•Show +´ NewDay⍟256 initial_state
