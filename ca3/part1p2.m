fs = 50;
f = -fs/2:0.5:fs/2 - 0.5;
t = -1:1/fs:1-1/fs;
x2=rectpuls(t,1);
figure
plot(t,x2)
grid on;
title('Rectangular Pulse');
xlabel('Time(s)');
ylabel('x_2(t)');
ylim ([-2 2]);
xlim ([-2 2]);
y2 = fftshift(fft(x2));
figure
plot(f,abs(y2)/max(abs(y2)));
title('ABS of Fourier Transform of $\prod(t)$','fontsize',14,'interpreter','latex');
xlabel('Frequency(Hz)');
ylabel('Magnitude');
grid on;