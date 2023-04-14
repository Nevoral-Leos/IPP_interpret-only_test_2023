# IPP_interpret-only_test_2023
VUT FIT - class IPP project 2 tests<br>
Should test mostly dynamic typing and obvious right and wrong functionalities of instructions.<br>
Some tests are generated and some are made by hand, so there is a room for error, if you find any, just create a pull-request.<br>
Tests don't cover XML format errors, so if anyone has some great ones for that, i'd love to add them.<br>

# Testing script

testing script assumes directory structure looking something like this
```
├── interptet.py
└── tests
    ├── ADD
    │   └── test_files
    ├── SUB
    │   └── test_files
    └── test.sh
```
You can change the location of your interptet using `INTERPRET` variable.
If `INTERPRET` is not set it defaults to `../../interptet.py`

usage:

```
cd /test_dir/
../test.sh
```

or

`INTERPRET=../interpret.py ./test.sh`

By default `test.sh` exits on first error, but specifying `NO_EXIT=1` will cause it to run all tests and print number of failed and passed tests

## Failure

On failure you might get an error output looking like this

```
Bad stdout /home/mates/code/fit/IPP/nevos-tests/1WRITE/write_bool.src
1c1
< true
\ No newline at end of file
---
> rue

run this test with:
python3 -O ../../interpret.py --source=/home/mates/code/fit/IPP/nevos-tests/1WRITE/write_bool.src --input=/home/mates/code/fit/IPP/nevos-tests/1WRITE/write_bool.in
Bad RC /home/mates/code/fit/IPP/nevos-tests/1WRITE/write_bool.src
got rc | expected rc
0     \	69

run this test with:
python3 -O ../../interpret.py --source=/home/mates/code/fit/IPP/nevos-tests/1WRITE/write_bool.src --input=/home/mates/code/fit/IPP/nevos-tests/1WRITE/write_bool.in
```
what does it mean?

Bad stdout means that your output did not match expected output (in this example interptet printed to stdou `true`, but testing script expected `rue`)
ignore the `\ No newline at end of file` message (that is there because how the tests are implemented).

Bad RC is bad return code (or return value).
In this example testing script expected return code 69, but received code 0.

last line (after "run this test with:") is how it was ran, this can help you to debug faster.


Good luck :)
