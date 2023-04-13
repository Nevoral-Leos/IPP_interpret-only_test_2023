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
