#!/bin/bash
# Operating on a parameterized file list

filename="*txt"

for file in $filename
do
    echo "Contents of $file"
    echo "---"
    cat "$file"
    echo
done

# If the [list] in a for loop contains wild cards (* and ?) used in filename
# expansion, then globbing takes place.
