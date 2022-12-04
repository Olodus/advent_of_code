lines ← •FLines •file.At ⊑ •args

FullyContained←{=´⟨≠⍷∾𝕩,(≠0⊑𝕩)⌈(≠1⊑𝕩)⟩}
InclusiveRange←{(0⊑𝕩)↓↕1⊑⟨0⊑𝕩,1+1⊑𝕩⟩}
SplitOn←{𝕨((⊢-˜¬×+`)∘=⊔⊢)𝕩}
ParseInt←{(10⊸×⊸+˜´∘⌽-⟜'0')𝕩}

•Show +´FullyContained InclusiveRange¨{ParseInt ¨ '-' SplitOn 𝕩}¨',' SplitOn ¨ lines
