test_pair1←⟨⟨6⟩,⟨4,5,6⟩⟩
test_pair2←⟨⟨5,6,7⟩,⟨7,8,9⟩⟩
Cool←{⟨≠⍷∾𝕩,(≠0⊑𝕩)⌈(≠1⊑𝕩)⟩}
•Show =´Cool test_pair1

Range←{(0⊑𝕩)↓↕1⊑𝕩}
Range ⟨2,5⟩ # The second range int has to be +1 to include that number
