# Uncommon MATLAB Bug: NaN and Logical Indexing

This repository demonstrates an uncommon error in MATLAB related to how logical indexing interacts with NaN (Not a Number) values.  The `bug.m` file contains a function that unexpectedly returns an empty array under certain conditions involving NaN inputs.

The issue arises because comparisons involving NaN values always return `false`, even when comparing NaN to itself.  This can lead to unexpected results when using logical indexing.

The `bugSolution.m` file provides a corrected version of the function that explicitly handles NaN input, addressing the unexpected behavior.

## How to reproduce

1. Clone this repository.
2. Open MATLAB and navigate to the directory.
3. Run `bug.m` with different input values, including NaN.
4. Observe the unexpected results with the original function.
5. Run `bugSolution.m` and see how it addresses the issue.