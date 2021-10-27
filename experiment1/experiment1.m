figure(1);

n = 0:10;
x = power(0.8, n) .* sin(pi/4 * n);
stem(n, x); grid on; xlabel('n'); ylabel('power(0.8, n) * sin(\pi/4 * n)');

figure(2);

t = linspace(-10, 10, 1000);
plot(t, sinc(t)); grid on; xlabel('t'); ylabel('sinc(t)');

figure(3);

t = linspace(-5, 5, 1000);

subplot(4, 1, 1);
plot(t, cos(t) + cos(20*t)); grid on; xlabel('t'); ylabel('cos(t)+cos(20t)');

subplot(4, 1, 2);
plot(t, cos(t).*cos(20*t)); grid on; xlabel('t'); ylabel('cos(t)cos(20t)');

t = linspace(-2, 2, 1000);

subplot(4, 1, 3);
plot(t, cos(t) + cos(20*t)); grid on; xlabel('t'); ylabel('cos(t)+cos(20t)');

subplot(4, 1, 4);
plot(t, cos(t).*cos(20*t)); grid on; xlabel('t'); ylabel('cos(t)cos(20t)');