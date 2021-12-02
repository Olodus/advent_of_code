# Read input
input←•file.At ⊑ •args
lines←•FLines input

# Create Substrings from each line
Substrings←{' '((⊢-˜¬×+`)∘=⊔⊢)¨𝕩}

# Parse array of number strings to numbers
ParseInt←{+´×˝(10⊸⋆¨⌽↕≠𝕩)≍(∾´(-⟜"0")¨𝕩)}

# My own  first version. Not all the way there
#⍉((+`¨(" "⊸⍷¨a))≍a)

# Sums all values of Cmd (left arg) over Cmd array (right arg)
SumForCmd←{+´×˝(𝕨⊸≡¨(⊑¨𝕩))≍(ParseInt¨⊑¨⌽¨𝕩)}

# Official (found in tutorial version)
# Not completely different from mine but I need to understand some parts of it
strings ← Substrings lines
part1 ← ("forward" SumForCmd strings) × (("down" SumForCmd strings)-("up" SumForCmd strings))
•Show "Answer part1:"
•Show part1
