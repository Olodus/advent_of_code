lines ← •FLines ⊑ •args
parseInt←{(10⊸×⊸+˜´∘⌽-⟜'0')}
input←parseInt¨','((⊢-˜¬×+`)∘=⊔⊢) ∾ ⊏ lines

# Part 1
Fuel←{|𝕨-𝕩}
FuelPerPosition←{+´𝕩 Fuel ¨𝕨}

#•Show "Fuel needed per position:"
per_position←input⊸FuelPerPosition¨↕⊑∨input
#•Show per_position

•Show "==== For Linear fuel consumption ===="
•Show "Lowest fuel needed:"
•Show ⊑∧per_position

•Show "Horizontal positions they should aim at:"
low_indices←per_position⊐⊑∧per_position
•Show low_indices

# Part 2

FuelPerPositionFactorial←{+´+´¨↕¨1⊸+¨𝕩 Fuel ¨𝕨}
per_position_factorial←input⊸FuelPerPositionFactorial¨↕⊑∨input
•Show "==== For Factorial fuel consumption ===="

#•Show "Fuel needed per position:"
#•Show per_position_factorial

•Show "Lowest fuel needed:"
•Show ⊑∧per_position_factorial

•Show "Horizontal positions they should aim at:"
low_indices_factorial←per_position_factorial⊐⊑∧per_position_factorial
•Show low_indices_factorial
