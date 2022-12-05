lines ← ⟨"    [D]    ","[N] [C]    ","[Z] [M] [P]"," 1   2   3 "⟩
nr_stacks ← ÷⟜4 1+≠⊑lines
floor←/1⍷{+´'1'⍷𝕩}¨lines
⌽↕floor
