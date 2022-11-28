OneIndexedMod←{1+𝕨|𝕩}
NextThreeRolls←{⟨100 OneIndexedMod 𝕩+1,100 OneIndexedMod 𝕩+2,100 OneIndexedMod 𝕩+3⟩}
DiceSeed←{1⊑𝕩}
TakeStep←{10⊸OneIndexedMod (𝕨-1) + +´𝕩}

# Starting from position 4 and die rolls (1,2,3) we should land on 10
4⊸TakeStep NextThreeRolls 99
# Starting from position 8 and die rolls (4,5,6) we should land on 3
8⊸TakeStep NextThreeRolls 2
