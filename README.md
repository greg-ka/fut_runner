# fut_runner
This is an example how to execute script which needs additional dependencies w/o sourcing the depndencies directly in the script body.
fut_run.sh file takes care of sourcing the dependencies (env variables and functions) before running the script : for example test1.sh in this case
Input agruments for running script are passed automatically to the script due to sourcing.

An example of usage:

./fut_run.sh ./test1.sh p1 p2 p3 p4 p5

The output:

Executing test: ./test1.sh p1 p2 p3 p4 p5 ...
Running FUT test example...
FUT Dependency check
Dep variable 1
Dep function 1
Dep variable 2
Dep function 2
Test input params
p1 p2 p3 p4 p5
