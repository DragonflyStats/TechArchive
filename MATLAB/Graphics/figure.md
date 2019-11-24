figure

Create a Figure graphics object

Syntax

 figure
figure(n)
Description

figure creates Figure graphics objects. Figure objects are the individual windows on the screen in which MATLAB displays graphical output. The default figure title will be "Figure n" with 'n' being the next Figure number displayed.

figure(n) creates a new Figure object using default property values. The figure generated will be given a default title of "Figure n" .

Examples

>> figure(2)

>> figure(3)

>> figure % Notice that this Figure is called Figure 4. Calling a Figure up this way % will automatically generate the next one in the sequence.


clf

Clear current Figure window

Syntax

clf

clf reset

  
Description

clf deletes all data from the current Figure. Note - the window is not deleted, just the contents inside the window.

Example:

% Click on Figure 1 to bring it forward. This will make it the "Current Figure".

>> clf % Notice that the data went away.
