lines ← •FLines •file.At ⊑ •args

ParseInt←{(10⊸×⊸+˜´∘⌽-⟜'0')𝕩}
SplitOn←{𝕨((⊢-˜¬×+`)∘=⊔⊢)𝕩}
InclusiveRange←{(0⊑𝕩)↓↕1⊑⟨0⊑𝕩,1+1⊑𝕩⟩}
FullyContained←{=´⟨≠⍷∾𝕩,(≠0⊑𝕩)⌈(≠1⊑𝕩)⟩}
Overlapping←{<´⟨≠⍷∾𝕩,(≠0⊑𝕩)+(≠1⊑𝕩)⟩}

•Show +´FullyContained ¨(InclusiveRange ¨({ParseInt ¨ '-'⊸SplitOn 𝕩}¨','⊸SplitOn)) ¨ lines
•Show +´Overlapping ¨(InclusiveRange ¨({ParseInt ¨ '-'⊸SplitOn 𝕩}¨','⊸SplitOn)) ¨ lines
