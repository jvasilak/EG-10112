%% test


x = linspace(0,3,300);
y = sin(2*pi*x);
plot(x, clipVec(y, -0.9, 0.9));
