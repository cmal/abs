#!/bin/bash

# ---- part I ----
List="one two three"
for a in $List     # Splits the variable in parts at whitespace.
do
  echo "111 $a"
done
# one
# two
# three
echo "---"
for a in "$List"   # Preserves whitespace in a single variable.
do #     ^     ^
  echo "$a"
done
# one two three



# ---- part II ----
# MAC 下有 COMMAND 命令，替换为 echo
variable1="a variable containing five words"
echo This is $variable1    # Executes COMMAND with 7 arguments:
# "This" "is" "a" "variable" "containing" "five" "words"

echo "This is $variable1"  # Executes COMMAND with 1 argument:
# "This is a variable containing five words"


variable2=""    # Empty.

echo $variable2 $variable2 $variable2
                # Executes COMMAND with no arguments.
echo "$variable2" "$variable2" "$variable2"
                # Executes COMMAND with 3 empty arguments.
echo "$variable2 $variable2 $variable2"
                # Executes COMMAND with 1 argument (2 spaces).

# Thanks, Stéphane Chazelas.
