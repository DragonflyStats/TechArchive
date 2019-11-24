matrices
joining matrixes
size function
exponential function
maximum of row in matrix
identity matrix

creating a vector
printing output to screen using the semi colon

regression models theta transpose
X theta

for loops

if else 
logical conditions and or equality

matrix algebra
sum of all values in a matrix

script editing




### Loops

In languages such as Pascal, C++, or Fortran the for-loop construct requires the programmer to specify the starting and stopping values of the loop variable, and optionally a stride value that indicates by how much the loop variable should be incremented during each iteration.

In Octave, however, the for loop construct uses a vector that contains all the values that the loop variable will take on. A typical for-loop in Octave looks like

<pre><code>
for i = 1:10
    disp(i);
end
</pre></code>

In this loop the loop variable i will take on all of the values in the vector 1:10, which will be 1, 2, 3, 4, 5, 6, 7, 8, 9, and 10. The function call disp(i) will call the value of i to be displayed. Finally, note that the for-loop is terminated with the end keyword.

If you want a loop that only uses even values for its loop variable you merely need to create a vector that only contains even values:

<pre><code>
for i = 0:2:10
    disp(i);
end
</pre></code>

In this loop, i will take on the values 0, 2, 4 ,6, 8, and 10.

Single line loops are easy; just remember to use semicolons where line-breaks would be:
<pre><code>
octave:20> for i = 0:4; disp(2^i); end
1
2
4
8
16
octave:21>
</pre></code>
