#!/bin/bash
# positional-parameters.sh
# Show positional parameters using substring extraction

echo ${*:2}          # Echoes second and following positional parameters.
echo ${@:2}}         # Same as above.

echo ${*:2:3}        # Echoes three positional parameters, starting at second.
