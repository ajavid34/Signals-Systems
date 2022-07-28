fs = 50;
f = -fs/2:1/38:fs/2 -1/38;
t = -19:1/fs:19-1/fs;
x5 = 0;
for i=-9:9 
    x5=x5+rectpuls(t-2*i,1);
end
figure
plot(t,x5)
grid on;
title('$x_5(t)=\sum_{k = -9}^{9} \prod{(t-2k)}$','fontsize',14,'interpreter','latex');
xlabel('Time(s)');
ylabel('x_5(t)');
ylim ([-1 2]);
xlim ([-21 21]);
y5 = fftshift(fft(x5));
figure
plot(f,abs(y5)/max(abs(y5)));
title('ABS of Fourier Transform of $\sum_{k = -9}^{9} \prod{(t-2k)}$','fontsize',14,'interpreter','latex');
xlabel('Frequency(Hz)');
ylabel('Magnitude');
xlim ([-20 20]);
grid on;