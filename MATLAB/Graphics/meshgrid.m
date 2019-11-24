% Creating meshes of two dimensional coordinates
[x,y] = meshgrid(1:2,1:3)


% Use meshgrid to create a 3-D surface plot of a function:

[X,Y] = meshgrid(-2:.2:2, -2:.2:2);                                
Z = X .* exp(-X.^2 - Y.^2);                                        
surf(X,Y,Z)
