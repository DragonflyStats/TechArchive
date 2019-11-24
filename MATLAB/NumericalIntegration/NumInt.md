Numerical Integration
=======================
Matlab has three different types of integration.

- `int` - Symbolic integration - use when you have an equation and want a symbolic answer. Many equations may not have an symbolic solution. We will cover this later in the semester as part of the Symbolic Toolbox examples.
- `trapz` and `cumtrapz` - Numeric integration with data points - approximates an answer by calculating the area under the data points using areas of trapezoids. The more data points, the better the approximation. trapz returns a single number, cumtrapz returns a list of numbers that represent the cumulative area for each data point.
- `quad` and `quadl` - approximate solutions for definite integrals that take equations as input. See the help file for a description of the difference and guidelines on which to use.
