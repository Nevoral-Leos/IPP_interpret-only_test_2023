#!/usr/bin/bash

# usage:
# cd /directory_with_tests/
# ../test.sh

PASSED=0
FAILED=0

if [[ -z "$INTERPRET" ]] ; then
  INTERPRET=../../interpret.py
fi

for x in $(find "$PWD" -name '*.src')
do
  #spuštění interptetu
  timeout 2 python3 -O "$INTERPRET" --source="$x" --input="${x%.src}.in" > "${x%.src}.my_out"

  #uložení návratové hodnoty
  echo $? | tr -d '\n' > "${x%.src}.my_rc"

  PASS=1
  # Kontrola stdout
  if [[ $(diff "${x%.src}.my_out" "${x%.src}.out") ]]
  then
    printf "\e[1;31mBad stdout\e[0m %s\n" "$x"
    diff "${x%.src}.my_out" "${x%.src}.out"
    echo""
    echo "run this test with:"
    echo "python3 -O $INTERPRET --source=$x --input=${x%.src}.in"
    PASS=0
  fi

  #kontrola návratové hodnoty
  if [[ $(diff "${x%.src}.my_rc" "${x%.src}.rc") ]]
  then
    printf "\e[1;31mBad RC\e[0m %s\n" "$x"
    echo "got rc | expected rc"
    diff -y -W 20 "${x%.src}.my_rc" "${x%.src}.rc"
    echo""
    echo "run this test with:"
    echo "python3 -O $INTERPRET --source=$x --input=${x%.src}.in"
    PASS=0
  fi

  #úspěch??
  if [[ $PASS -eq 1 ]]
  then
    printf "\e[1;32mPASS\e[0m %s\n" "$x"
    PASSED=$((PASSED+1))
  else
    if [[ -z "$NO_EXIT" ]] ; then
      exit
    else
      FAILED=$((FAILED+1))
    fi
  fi
done

printf "PASSED: %d\n" $PASSED
printf "FAILED: %d\n" $FAILED
