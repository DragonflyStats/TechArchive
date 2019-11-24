clear all; close all; clc;
% original data
t=0:0.1:5;
y=[ 40.0 41.2 42.2 43.2 44.0 44.8 45.4 46.0 46.5 46.8 47.1 47.3 47.3 47.3 47.2 47.0 46.7 46.2 45.7 45.1 44.4 43.6 42.7 41.7 40.6 39.4 38.1 36.7 35.2 33.6 31.9 30.1 28.2 26.2 24.2 22.0 19.7 17.3 14.8 12.3 9.6 6.8 4.0 1.0 -2.1 -5.2 -8.5 -11.8 -15.3 -18.8 -22.5 ]; 
 
% numerical derivative values
dydt = diff(y)./diff(t);
% associated time values (central difference)
tt = t(1:end-1)+diff(t)./2;
 
% make the plot with two y axis
[ax h1 h2] = plotyy(t,y,tt,dydt);
legend('y(t) (position)','dy/dt (velocity)');
xlabel('time(sec)');
 
% Set the labels and marker types
set(get(ax(1),'YLabel'),'String','Position (m)');
set(get(ax(2),'YLabel'),'String','Velocity (m/s)');
set(h1,'Marker','pentagram');
set(h2,'Marker','hexagram');
