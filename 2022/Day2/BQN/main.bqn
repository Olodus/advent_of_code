input ← •file.At ⊑ •args
lines ← •FLines input

#0:Rock, 1:Paper, 2:Scissors
ParseTurns←{⟨(0⊑𝕩)-'A',(2⊑𝕩)-'X'⟩}
possible_turns←⟨⟨0,0⟩,⟨0,1⟩,⟨0,2⟩,⟨1,0⟩,⟨1,1⟩,⟨1,2⟩,⟨2,0⟩,⟨2,1⟩,⟨2,2⟩⟩
scores←⟨4,8,3,1,5,9,7,2,6⟩
Turn2Score←{(+´(↕≠possible_turns)×𝕩⊸≡¨possible_turns)⊑scores}

# Part 1
•Show +´Turn2Score¨ParseTurns¨lines

# Part 2
resulting_moves←⟨⟨2,0,1⟩,⟨0,1,2⟩,⟨1,2,0⟩⟩
CreateTurn←{⟨0⊑𝕩, ((1⊑𝕩)⊑(0⊑𝕩)⊑𝕨)⟩}
•Show +´Turn2Score¨resulting_moves⊸CreateTurn¨ParseTurns¨lines
