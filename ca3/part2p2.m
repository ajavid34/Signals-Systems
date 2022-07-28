fs = 50;
f = -fs/2:0.5:fs/2 - 0.5;
t = -1:1/fs:1-1/fs;
x6=ones(size(t));
figure
plot(t,x6)
grid on;
title('$x_7(t) = 1$','fontsize',14,'interpreter','latex')
xlabel('Time(s)');
ylabel('x_7(t)');
y6 = fftshift(fft(x6));
figure
plot(f,abs(y6)/max(abs(y6)));
title('ABS of Fourier Transform of $x_7(t) = 1$', ...
    'fontsize',14,'interpreter','latex');
xlabel('Frequency(Hz)');
ylabel('Magnitude');
grid on;