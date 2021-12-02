# Read input
input←•file.At ⊑ •args
lines←•FLines input

# Parse array of number strings to numbers
ParseInt←{+´¨×˝((10⊸⋆)¨(⌽↕)¨≠¨𝕩)≍(∾´¨((-⟜"0")¨¨𝕩))}

# My own  first version. Not all the way there
#⍉((+`¨(" "⊸⍷¨a))≍a)

# Official (found in tutorial version)
# Not completely different from mine but I need to understand some parts of it
•Show ' '((⊢-˜¬×+`)∘=⊔⊢)¨lines
