%% simple example of numerical differentiation
% compared to analytic solution
clear all; close all; clc;
% very simple data set
np = 4; % number of points on a curve
func = @(t)4.*sin(t); % function
dfunc = @(t)4.*cos(t); % derivative of function
 
t = linspace(0,pi,np);
y = func(t);
plotrange = [0 4 -5 5]; % limits for plot with room for labels
 
hold on;
grid on;
axis(plotrange);
title('Numerical Differentiation Example');
 
% plot actual curve
tt = linspace(0,pi,100);
yy = func(tt);
plot(tt,yy,'k--');
 
% plot actual derivative
tt = linspace(0,pi,100);
yy = dfunc(tt);
plot(tt,yy,'m--');
 
% plot points and connecting lines
plot(t,y,'b-s');
 
% display point numbers
for i=1:length(t)
    text(t(i),y(i)+.3,num2str(i),'horizontalalignment','center');
end
 
% numerical difference
dydt = diff(y)./diff(t);
 
% forward difference - plot numerical derivative at first point
tt = t(1:end-1);
plot(tt,dydt,'r-s');
 
% backward difference - plot numerical derivative at 2nd point
tt = t(2:end);
plot(tt,dydt,'g-s');
 
% central difference - plot numerical derivative at midpoint
tt = t(1:end-1) + diff(t)./2;
plot(tt,dydt,'k-s');
 
% fini
legend('y(t)','dy/dt','y(t) points',...
    'dy/dt (forward)','dy/dt (backward)','dy/dt (central)');
