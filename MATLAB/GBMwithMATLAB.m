% https://github.com/horchler/SDETools
N = 1e3;
r = 1;
alpha = 0.1;
T = 1;
npaths = 1e3;        % Number of simulations

t = T*(0:1:N)/N;     % Time vector
y0 = ones(npaths,1); % Vector of initial conditions, must match number of paths
opts = sdeset('RandSeed',0,'SDEType','Ito'); % Set seed
y = sde_gbm(r,alpha,t,y0,opts);

figure;
plot(t,y,'b',t,y0*exp(r*t),'r--');
xlabel('t');
ylabel('y(t)');
title(['Geometric Brownian motion and it's mean: ' int2str(npaths) ...
       ' paths, r = ' num2str(r) ', \alpha = ' num2str(alpha)]);
