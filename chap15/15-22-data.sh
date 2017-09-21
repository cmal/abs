# This is a data file loaded by a script.
# Files of this type may contain variables, functions, etc.
# It loads with a 'source' or '.' command from a shell script.

# Let's initialize some variables.

variable1=23
variable2=474
variable3=5
variable4=97

message1="Greetings from *** line $LINENO *** of the data file!"
message2="Enough for now. Goodbye."

print_message ()
{   # Echoes any message passed to it.

  if [ -z "$1" ]
  then
    return 1 # Error, if argument missing.
  fi

  echo

  until [ -z "$1" ]
  do             # Step through arguments passed to function.
    echo -n "$1" # Echo args one at a time, suppressing line feeds.
    echo -n " "  # Insert spaces between words.
    shift        # Next one.
  done

  echo

  return 0
}
