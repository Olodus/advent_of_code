# First tr removes double spaces, second awk removes leading spaces
cat Day4/test_input.txt | tr -s " " | awk '{$1=$1;print}' > Day4/test_input_sanitize.txt
cat Day4/input.txt | tr -s " " | awk '{$1=$1;print}' > Day4/input_sanitize.txt
