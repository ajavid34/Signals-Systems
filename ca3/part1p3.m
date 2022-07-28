fs = 50;
f = -fs/2:0.5:fs/2 - 0.5;
t = -1:1/fs:1-1/fs;
x1 = cos(10*pi*t);
x2=rectpuls(t,1);
x3=x1.*x2;
figure
plot(t,x3)
grid on;
title('$\prod(t) \times cos(10\pi t)$','fontsize',14,'interpreter','latex')
xlabel('Time(s)');
ylabel('\pi(t) \times cos(10\pi t)');
ylim ([-2 2]);
xlim ([-2 2]);
y3 = fftshift(fft(x3));
figure
plot(f,abs(y3)/max(abs(y3)));
title('ABS of Fourier Transform of $\prod(t) \times cos(10\pi t)$', ...
    'fontsize',14,'interpreter','latex');
xlabel('Frequency(Hz)');
ylabel('Magnitude');
grid on;
