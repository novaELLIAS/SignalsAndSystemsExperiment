
% 指数信号
figure(1);

for i=1:5
    
    E = 1;
    a = i * 2;
    t = linspace(0, 4, 1000);
    w = linspace(-30, 30, 10000);
    f = E*exp(-a * t);
    F = 1 ./ (a + j*w);

    subplot(4, 5, i);
    plot(t, f); grid on; xlabel('t'); ylabel('f(t)'); title('a=', a);

    subplot(4, 5, 5 + i);
    plot(w, abs(F)); grid on; xlabel('\omega'); ylabel('|F(\omega)|'); title('a=', a);
    
    subplot(4, 5, 10 + i);
    max_logF = max(abs(F));
    plot(w, 20*log10(abs(F)/max_logF)); grid on; xlabel('\omega'); ylabel('|F(\omega)| in dB'); title('a=', a);

    subplot(4, 5, 15 + i);
    plot(w, angle(F)); grid on; xlabel('\omega'); ylabel('\phi(\omega)'); title('a=', a);
end

% 矩形脉冲
figure(2)

tt = 2;
E  = 1;
t  = linspace(-10, 10, 10000);
w  = linspace(-30, 30, 10000);
F  = E * tt * sinc(w/(2*pi)*tt);

subplot(3, 1, 1);
plot(w, abs(F)); grid on; xlabel('\omega'); ylabel('|F(\omega)|');

subplot(3, 1, 2);
max_logF = max(abs(F));
plot(w, 20*log10(abs(F)/max_logF)); grid on; xlabel('\omega'); ylabel('|F(\omega)| in dB');

subplot(3, 1, 3);
plot(w, angle(F)); grid on; xlabel('\omega'); ylabel('\phi(\omega)');

% 升余弦脉冲
figure(3);

tt = 2;
E  = 1;
t  = linspace(-10, 10, 10000);
w  = linspace(-30, 30, 10000);
f  = E/2*(1 + cos(2*pi*t/tt)).*rectpuls(t, tt);
wo = 2 * pi / tt;
F  = f_ori(E, w, tt) + f_ori(E, w - wo, tt) / 2 + f_ori(E, w + wo, tt) / 2;

subplot(4, 1, 1);
plot(t, f); grid on; xlabel('t'); ylabel('f(t)');

subplot(4, 1, 2);
plot(w, abs(F)); grid on; xlabel('\omega'); ylabel('|F(\omega)|');

subplot(4, 1, 3);
max_logF = max(abs(F));
plot(w, 20*log10(abs(F)/max_logF)); grid on; xlabel('\omega'); ylabel('|F(\omega)| in dB');

subplot(4, 1, 4);
plot(w, angle(F)); grid on; xlabel('\omega'); ylabel('\phi(\omega)');

% 三角脉冲
figure(4);

tt = 2;
E  = 1;
t  = linspace(-10, 10, 10000);
w  = linspace(-30, 30, 10000);
f  = E*(1-2*abs(t)/tt).*rectpuls(t, tt);
F  = E*tt/2*power(sinc(w*tt/4/pi), 2);

subplot(4, 1, 1);
plot(t, f); grid on; xlabel('t'); ylabel('f(t)');

subplot(4, 1, 2);
plot(w, abs(F)); grid on; xlabel('\omega'); ylabel('|F(\omega)|');

subplot(4, 1, 3);
max_logF = max(abs(F));
plot(w, 20*log10(abs(F)/max_logF)); grid on; xlabel('\omega'); ylabel('|F(\omega)| in dB');

subplot(4, 1, 4);
plot(w, angle(F)); grid on; xlabel('\omega'); ylabel('\phi(\omega)');