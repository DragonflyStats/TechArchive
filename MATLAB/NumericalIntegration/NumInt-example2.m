function numint_ex2
clear all; close all; clc;
 
% given exact answers used for comparisons
a1 = 5/2;
a2 = 24*cos(6) + 68*sin(6);
 
% given functions
f1 = @(x)(x);
f2 = @(x)(x.^2.*cos(x));
 
check_trap(f1,2,3,a1,1e-6);
check_trap(f2,-6,6,a2,1e-6,3000);
check_quad(f1,2,3,1e-8);
check_quad(f2,-6,6,1e-8);
 
%% evaluate an integral using the quad function
% this function is almost trival - it justs uses quad and displays results
function check_quad(f,x1,x2,tol)
if nargin<4, tol=1e-8; end % default tolerance
[a cnt] = quad(f,x1,x2,tol);
fprintf('quad had answer of %.8f in %.0f function evaluations\n',a,cnt);
 
%% evaluate an integral using trapz
% this example is only for testing and demonstration
% in normal use it doesn't make sense to use trapz on a function
% because you have to generate points from the function
function check_trap(f,x1,x2,exact,tol,maxpts)
if nargin<5, tol=1e-6; end % default tolerance
if nargin<6, maxpts=10000; end % default max_iter
 
% loop until we get within tol of the exact answer
err = Inf;
npts = 1; % 
while err>tol && npts < maxpts
    % generate points
    npts = npts + 1;
    x = linspace(x1,x2,npts);
    y = f(x);
    % calc answer and error
    a = trapz(x,y);
    err = abs(a - exact);
end
 
% display results
if npts == maxpts
    fprintf('trapz maximum number of points (%.0f) reached, ans=%.8f, err=%.8f\n',maxpts,a,err);
else
    fprintf('trapz gives answer of %.8f with %.0f points\n',a,npts);
end
