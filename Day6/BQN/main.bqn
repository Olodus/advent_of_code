init←⟨3,4,3,1,2⟩
Next←{𝕩-1}
New←{
  zeroes←+´0⍷𝕩
  (zeroes>0)◶⟨⊢,∾⟜(zeroes⥊8)⟩𝕩
}
Reset←{
  0⊸=◶⟨⊢,+6⟩¨𝕩
}
Reset New Next init
