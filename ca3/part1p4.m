fs = 100;
t = 0:1/fs:1-1/fs;
f = -fs/2:1:fs/2 - 1;
t = 0:1/fs:1-1/fs;
x = cos(30*pi*t + pi/4);
y4 = fftshift(fft(x));
figure
plot(f,abs(y4)/max(abs(y4)));
title('ABS of Fourier Transform of $cos(30\pi t + \pi/4)$', ...
    'fontsize',14,'interpreter','latex');
grid on;
xlabel('Frequency(Hz)');
ylabel('Magnitude');
grid on;
tol = 1e-6;
y4(abs(y4) < tol) = 0;
theta = angle(y4);
figure
plot(f,theta/pi);
title('Phase of Fourier Transform of $cos(30\pi t + \pi/4)$', ...
    'fontsize',14,'interpreter','latex');
xlabel 'Frequency (Hz)'
ylabel 'Phase / \pi'
grid on;