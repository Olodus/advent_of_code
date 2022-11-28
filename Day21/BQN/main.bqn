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
While ← {𝕩{𝔽⍟𝔾∘𝔽_𝕣_𝔾∘𝔽⍟𝔾𝕩}𝕨@}´
roll← NextThreeRolls 99
nr_rolls←0
p1pos←4
p1score←0
p2pos←8
p2score←0
player←1
While ((p1score<1000)∨(p2score<1000))‿{
  roll↩NextThreeRolls DiceSeed roll
  nr_rolls↩nr_rolls+1
  player↩¬player
  player◶⟨UpdateP1,UpdateP2⟩ roll
}
¬player◶⟨p1score⊸⋆,p2score⊸⋆⟩ nr_rolls
