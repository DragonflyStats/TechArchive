x = linspace(0, 1, 100);
y1 = x.^0.5;
y2 = x.^1;
y3 = x.^2;
plot(x, y1, 'k-', x, y2, 'k--', x, y3, 'k:');
legend('y=x^{0.5}', 'y=x', 'y=x^2', 0);
title('y=x^n for Three Values of n (mrg)');
xlabel('x');
ylabel('y');
print -deps CurvePlot % note that adds .eps to filename
