lines ← •FLines •file.At ⊑ •args

nr_stacks ← ÷⟜4 1+≠⊑lines
floor←/1⍷{+´"1   2"⍷𝕩}¨lines
StackChar←{1+4×𝕩}
untrimmed_stacks←{𝕩⊸⊑¨(⌽↕floor)⊑lines}¨StackChar¨↕nr_stacks
initial_stacks←{⌽(+´' '⍷𝕩)↓⌽𝕩}¨untrimmed_stacks
stacks1←initial_stacks
stacks2←initial_stacks
Push←{∾¨𝕩⋈¨𝕨}
Push2←{{(0⊑𝕩)∾(⌽1⊑𝕩)}¨𝕩⋈¨𝕨}
Pop←{{⌽(1⊑𝕩)↓⌽0⊑𝕩}¨𝕩⋈¨𝕨}
MakePush←{
  full←𝕨
  oper←𝕩
  {𝕩=2⊑oper}◶⟨{""},{(0⊑oper)↑⌽(1⊑oper)⊑full}⟩¨(↕≠𝕨)
}
MakePop←{(1⊑𝕩)⊸=◶⟨0,0⊑𝕩⟩¨↕≠𝕨}
Movement←{stacks1↩(stacks1 MakePush 𝕩)⊸Push (stacks1 MakePop 𝕩)⊸Pop stacks1}
Movement2←{stacks2↩(stacks2 MakePush 𝕩)⊸Push2 (stacks2 MakePop 𝕩)⊸Pop stacks2}
ParseInt←{(10⊸×⊸+˜´∘⌽-⟜'0')𝕩}
SplitOn←{𝕨((⊢-˜¬×+`)∘=⊔⊢)𝕩}
operations←({ParseInt¨⟨(1⊑𝕩),(3⊑𝕩)-1,(5⊑𝕩)-1⟩}' '⊸SplitOn)¨(2+floor)↓lines
Movement¨operations
Movement2¨operations
•Show (⊑⌽)¨stacks1
•Show (⊑⌽)¨stacks2
