# Part 1
## Input (TODO: This should be taken from the input file)
board←⟨5,5⟩⥊[14,21, 17, 24, 4, 10, 16, 15, 9, 19, 18, 8, 23, 26, 20, 22, 11, 13, 6, 5, 2, 0, 12, 3, 7]
marker←⟨5,5⟩⥊[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
lucky_numbers←⟨7,4,9,5,11,17,23,2,0,14,21,24,10,16,13,6,15,25,12,22,18,20,8,19,3,26,1⟩

## Example
### Taking the first 12 of the lucky numbers
### Finding them in the board and then subtracting that finding from the marker
### Then also pairing that with the winning number
#{𝕩⋈(marker↩marker-𝕩⍷board)}¨(12↑lucky_numbers)

## Creating all ways of winning
base←⟨5,5⟩⥊[1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
victories←{𝕏base}¨ ⟨⊢,»,»»,»(»»),(»»)(»»),⍉⊢,⍉»,⍉(»»),⍉(»(»»)),⍉((»»)(»»))⟩

## A marker array is a array of 1s and 0s where a number has been marked
## This is an example winning marker. First row winning, some other marked
#marker←⟨5,5⟩⥊[0,0,0,0,0,1,1,1,1,1,1,0,1,1,1,1,0,0,1,1,0,1,1,1,1]

bingo←0
DoWhile ← {𝕨{𝕊⍟𝔽𝔾𝕩}𝕩@}´
lucky_number←0
DoWhile {𝕤⋄bingo=0}‿{𝕤
  # Taking a new lucky number
  lucky_number ↩ ⊏lucky_numbers
  # Marking that if it exists on board
  marker ↩ marker-lucky_number ⍷ board
  
  # Checking for bingo
  ### Here we multiply all victory possibilies with a marker.
  ### If any victories are complete then an array will have sum 0,
  ### So after we find 0s we should have one victory array
  bingo↩+´0⍷(+´+˝)¨{marker×𝕩}¨victories
  
  # Updating lucky number array
  lucky_numbers↩1↓lucky_numbers
}

•Show "Winning number:"
•Show lucky_number
•Show "Winning marker:"
•Show marker
•Show "Winning board:"
•Show board

## Sum all unmarked on board
unmarked_sum←(+´+˝)marker×board
•Show "Unmarked sum:"
•Show unmarked_sum

## Creating the score
score←unmarked_sum×⊏current_row
•Show "Score:"
•Show score
