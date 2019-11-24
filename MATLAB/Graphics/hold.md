hold

Hold current graph in the Figure

Syntax

hold on

hold off

hold

Description

The hold function determines whether new graphics objects are added to the graph or replace objects in the graph.

hold on retains the current plot and certain Axes properties so that subsequent graphing commands add to the existing graph.

hold off resets Axes properties to their defaults before drawing new plots.

hold off is the default.

hold toggles the hold state between adding to the graph and replacing the graph.

Examples

>> hold on

>> t = 0:pi/20:30*pi;

>> plot(t,50*sin(t),'green') % Notice that the original data was not overwritten.

% Please do not close the plot that you have just generated. We will add on to it later.

>> hold off % Turn off hold now - we won't need it for the next example.

 
