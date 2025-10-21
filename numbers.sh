#! /bin/bash
# numbers.sh
# Lorenzo Cocchi

# Prompt and read
read -rp "Enter a positive integer: " user_input

# Validate: must be digits only and > 0
if ! [[ $user_input =~ ^[0-9]+$ ]]; then
  echo "Invalid input. Please enter digits only." >&2
  exit 1
fi

if (( user_input <= 0 )); then
  echo "Invalid input. Please enter an integer greater than 0." >&2
  exit 1
fi

# Loop 1..N and classify even/odd
for (( i=1; i<=user_input; i++ )); do
  if (( i % 2 == 0 )); then
    echo "$i is even"
  else
    echo "$i is odd"
  fi
done

