clc
clear all
% find secondary current, Is (ohms)
disp('Find the secondary current')
disp('INPUTS')
% INPUTS
% primary voltage, vp (volts)
vp=12;
% resistance value, r (ohms)
r=100;
% primary windings, np
np=6;
% secondary windings, ns
ns=3;
fprintf('  The primary voltage is %g V\n',vp)
fprintf('  The secondary resistance is %g ohms\n',r)
fprintf('  There are %g primary windings\n',np)
fprintf('  There are %g secondary windings\n\n',ns)
% CODE
vs=(ns/np)*vp;
I =(vs/r);
% OUTPUTS
disp('OUTPUTS')
fprintf('  The secondary voltage is %g V\n',vs)
fprintf('  The secondary current is %g amps\n',I)
