input ← •file.At ⊑ •args
lines ← •FLines input

Input2Binary←{÷⟜11¨|¨2⊸+¨-⟜'0'¨𝕩}
iea ← Input2Binary ⊑ lines
start_image ← ⟨(≠lines)-2,(≠lines)-2⟩⥊∾Input2Binary¨ 2↓ lines

Surround←{∾⟨3,3⟩⥊⟨⟨1,1⟩⥊𝕨,⟨1,≠𝕩⟩⥊𝕨,⟨1,1⟩⥊𝕨,⟨≠𝕩,1⟩⥊𝕨,𝕩,⟨≠𝕩,1⟩⥊𝕨,⟨1,1⟩⥊𝕨,⟨1,≠𝕩⟩⥊𝕨,⟨1,1⟩⥊𝕨⟩}
KernelBinNr←{⊑+˝(2⊸⋆¨⌽↕9)×⟨9,1⟩⥊𝕩}
ApplyIEA←{𝕩⊑iea}
Enhance←{ApplyIEA¨KernelBinNr˘˘⟨3,3⟩↕𝕨⊸Surround 𝕨⊸Surround 𝕩}

#•Show "Start image:"
#•Show start_image

•Show "==== PART 1 ===="
•Show "-- After 2 enhancements --"
#•Show Enhance Enhance start_image
•Show "Nr of lit pixels if IEA 0 is '.' (Ex: test_input.txt):"
•Show +´+˝0⊸Enhance 0⊸Enhance start_image
•Show "Nr of lit pixels if IEA 0 is '#' (Ex: input.txt):"
•Show +´+˝1⊸Enhance 0⊸Enhance start_image

•Show "==== PART 2 ===="
•Show "-- After 50 enhancements --"
•Show "Nr of lit pixels if IEA 0 is '.' (Ex: test_input.txt):"
•Show +´+˝ 0⊸Enhance⍟50 start_image
•Show "Nr of lit pixels if IEA 0 is '#' (Ex: input.txt):"
•Show +´+˝(1⊸Enhance 0⊸Enhance)⍟25 start_image
