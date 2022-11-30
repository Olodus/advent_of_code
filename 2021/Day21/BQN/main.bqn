OneIndexedMod←{1+𝕨|𝕩}
NextThreeRolls←{⟨100 OneIndexedMod 𝕩+1,100 OneIndexedMod 𝕩+2,100 OneIndexedMod 𝕩+3⟩}
DiceSeed←{1⊑𝕩}
TakeStep←{10⊸OneIndexedMod (𝕨-1) + +´𝕩}
UpdateP1←{
  p1pos↩p1pos⊸TakeStep 𝕩
  p1score↩p1score+p1pos
}
UpdateP2←{
  p2pos↩p2pos⊸TakeStep 𝕩
  p2score↩p2score+p2pos
}
While ← {𝕨{𝕊∘𝔾⍟𝔽𝕩}𝕩@}´
DoWhile ← {𝕨{𝕊⍟𝔽𝔾𝕩}𝕩@}´
roll← NextThreeRolls 96
nr_rolls←0
p1pos←4
p1score←0
p2pos←10
p2score←0
player←1
winning_score←1000
a←0

#While ((p1score<winning_score)∧(p2score<winning_score))‿{
#DoWhile {𝕤 ⋄ running}‿{s
While {𝕤⋄((p1score<winning_score)∧(p2score<winning_score))}‿{𝕤
  #•Show DiceSeed roll
  #•Show NextThreeRolls DiceSeed roll
  roll↩NextThreeRolls DiceSeed roll
  #•Show roll
  nr_rolls↩nr_rolls+3
  player↩¬player
  player◶⟨UpdateP1,UpdateP2⟩ roll
  #•Show "Player 1 score:"
  #•Show p1score
  #•Show p1pos
  #•Show "Player 2 score:"
  #•Show p2score
  #•Show p2pos
  #a↩a+1
}
•Show "Player 1 score:"
•Show p1score
•Show p1pos
•Show "Player 2 score:"
•Show p2score
•Show p2pos
•Show "Nr rolls:"
•Show nr_rolls
•Show "End result:"
•Show "If P1:"
•Show nr_rolls⋆p1score
•Show "If P2:"
•Show nr_rolls⋆p2score
