base←⟨5,5⟩⥊[1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
victories←{𝕏base}¨ ⟨⊢,»,»»,»(»»),(»»)(»»),⍉⊢,⍉»,⍉(»»),⍉(»(»»)),⍉((»»)(»»))⟩
# A marker array is a array of 1s and 0s where a number has been marked
marker←⟨5,5⟩⥊[0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]

# Here we multiply all victory possibilies with a marker.
# If any victories are complete then an array will have sum 0,
# So after we find 0s we should have one victory array
0⍷(+´+˝)¨{marker×𝕩}¨victories

# Now we can multiply this marker with its board and sum the result
unmarked_sum←(+´+˝)marker×board

# And then all that is left is to multiply this with the winning number
score←unmarked_sum×winning_number
