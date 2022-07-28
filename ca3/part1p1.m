fs = 50;
f = -fs/2:0.5:fs/2 - 0.5;
t = -1:1/fs:1-1/fs;
x1 = cos(10*pi*t);
figure
plot(t,x1);
grid on;
title('cos(10\pit)');
xlabel('Time(s)');
ylabel('cos(10\pit)');
ylim ([-5 5]);
grid on;
y1 = fftshift(fft(x1));
figure
plot(f,abs(y1)/max(abs(y1)));
xlim ([-20 20]);
grid on;
title('ABS of Fourier Transform of $ cos(10\pi t)$', ...
    'fontsize',14,'interpreter','latex');
xlabel('Frequency(Hz)');
ylabel('Magnitude');