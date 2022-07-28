fs = 50;
f = -fs/2:0.5:fs/2 - 0.5;
t = -1:1/fs:1-1/fs;
x6=zeros(size(t));
n = size(t,2)/2;
x6(n)=1e7;
figure
plot(t,x6)
grid on;
title('$\delta(t)$','fontsize',14,'interpreter','latex')
xlabel('Time(s)');
ylabel('\delta(t)');
ylim ([0 2]);
 xlim ([-2 2]);
y6 = fftshift(fft(x6));
figure
plot(f,abs(y6)/max(abs(y6)));
title('ABS of Fourier Transform of $\delta(t)$', ...
    'fontsize',14,'interpreter','latex');
xlabel('Frequency(Hz)');
ylabel('Magnitude');
ylim ([-2 2]);
grid on;