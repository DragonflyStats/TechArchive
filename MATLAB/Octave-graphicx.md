Graphics

Graphics
3D plots
Putting several graphs in one window
Three-dimensional graphics



3D plots
Octave provides a wide range of methods for visualising 3D data. The simplest form of
3D graph is plot3, which is the 3D equivalent of the plot command. Used for plotting
points or drawing lines, this simply takes a list of x, y and z values. The following example
plots a helix, using a parametric representation.


>> t = 0:pi/50:10*pi;
>> x = sin(t); y = cos(t); z = t;
>> plot3(x, y, z);



Putting several graphs in one window
If you have several graphs sharing a similar theme, you can plot them on separate graphs
within the same graphics window. The subplot command splits the graphics window into
an array of smaller windows. The general format is subplot(rows ,columns ,select ).
The select argument specifies the current graph in the array. These are numbered from
the top left, working along the rows first.

The example below creates two graphs, one on top of the other.

>> x = linspace(-10, 10);
>> subplot(2,1,1)
>> % Specify two rows, one column, and 
>> % select the top one as the current graph
>> plot(x, sin(x));
>> subplot(2,1,2);
>> plot(x, sin(x)./x);



The standard axes labelling and title commands can also be used in each subplot.

Function plot can be used to produce a graph from two vectors x and y.
The code:

x = 0:pi/100:2*pi;
y = sin(x);
plot(x,y)

produces the sine function.

Three-dimensional graphics

Three-dimensional graphics can be produced using the functions surf, plot3 or mesh.

This code produces a wireframe 3D plot of the two-dimensional unnormalized sinc function: 

[X,Y] = meshgrid(-10:0.25:10,-10:0.25:10);
f = sinc(sqrt((X/pi).^2+(Y/pi).^2));
mesh(X,Y,f);
axis([-10 10 -10 10 -0.3 1])
xlabel('{\bfx}')
ylabel('{\bfy}')
zlabel('{\bfsinc} ({\bfR})')
hidden off

This code produces a surface 3D plot of the two-dimensional unnormalized sinc function:

[X,Y] = meshgrid(-10:0.25:10,-10:0.25:10);
f = sinc(sqrt((X/pi).^2+(Y/pi).^2));
surf(X,Y,f);
axis([-10 10 -10 10 -0.3 1])
xlabel('{\bfx}')
ylabel('{\bfy}')
zlabel('{\bfsinc} ({\bfR})')



 
 
	


