# Part 1
## Finding a match and marking it
board←⟨5,5⟩⥊[14,21, 17, 24, 4, 10, 16, 15, 9, 19, 18, 8, 23, 26, 20, 22, 11, 13, 6, 5, 2, 0, 12, 3, 7]
start_marker←⟨5,5⟩⥊[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
lucky_numbers←⟨7,4,9,5,11,17,23,2,0,14,21,24,10,16,13,6,15,25,12,22,18,20,8,19,3,26,1⟩
### Taking the first 12 of the lucky numbers
### Finding them in the board and then subtracting that finding from the marker
### Then also pairing that with the winning number
{𝕩⋈(start_marker↩start_marker-𝕩⍷board)}¨(12↑lucky_numbers)

## Creating all ways of winning
base←⟨5,5⟩⥊[1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
victories←{𝕏base}¨ ⟨⊢,»,»»,»(»»),(»»)(»»),⍉⊢,⍉»,⍉(»»),⍉(»(»»)),⍉((»»)(»»))⟩

## A marker array is a array of 1s and 0s where a number has been marked
## This is an example winning marker. First row winning, some other marked
marker←⟨5,5⟩⥊[0,0,0,0,0,1,1,1,1,1,1,0,1,1,1,1,0,0,1,1,0,1,1,1,1]

## Finding a bingo
### Here we multiply all victory possibilies with a marker.
### If any victories are complete then an array will have sum 0,
### So after we find 0s we should have one victory array
0⍷(+´+˝)¨{marker×𝕩}¨victories

## Sum all unmarked on board
unmarked_sum←(+´+˝)marker×board

## Creating the score
score←unmarked_sum×winning_number
