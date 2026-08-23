#!/usr/bin/env bash

# Note with and without the use of echo
echo $[1+1]

# This does the math but returns command not found after evaluating the expression
$[1+1]
