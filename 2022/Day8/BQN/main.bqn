lines ← •FLines •file.At ⊑ •args

ParseInt←{𝕩-'0'}
MarkSeen←{∊⌈`𝕩}
ToMatrix←{⟨≠⊑𝕩,≠⊑𝕩⟩⥊∾𝕩}
•Show +´+˝{𝕩>0}⌜+´{⟨MarkSeen˘⊢𝕩,⍉⌽⍉ MarkSeen˘⍉⌽⍉𝕩,⍉ MarkSeen˘⍉𝕩,⍉⌽⍉⍉ ⍉⌽⍉⍉ ⍉⌽⍉⍉ MarkSeen˘⍉⌽⍉⍉𝕩⟩} ToMatrix {ParseInt¨𝕩}¨lines
