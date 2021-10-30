nx = 0:3;
x = ones(1, length(nx));

nh = 0:9;
h = ones(1, length(nh));
for i = 1:10
    h(i) = h(i) * power(0.8, i - 1);
end

y = conv(x, h);
nyMin = min(nx) + min(nh);
nyMax = max(nx) + max(nh);
ny = nyMin:nyMax;

figure(1);

subplot(3, 1, 1);
stem(nx, x); grid on; xlabel('n'); ylabel('x');

subplot(3, 1, 2);
stem(nh, h); grid on; xlabel('n'); ylabel('h');

subplot(3, 1, 3);
stem(ny, y); grid on; xlabel('n'); ylabel('x*h');

y