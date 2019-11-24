clc
clear all
disp('Find the KE of an object')
disp('INPUTS')
m=30;
v=107;
% See the use of '' to be able to use an apostrophe
fprintf('  The object''s mass is %g kg\n',m)
fprintf('  The object is moving at %g m/s\n\n',v)
KE=(1/2)*m*(v^2);
disp('OUTPUTS')
fprintf('  The object has a kinetic energy of %g J\n',KE)
