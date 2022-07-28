[x, Fs] = audioread("x_test.wav");
y = audioread("y_test.wav");
N=min(length(x),length(y));
rxx=xcorr(x(1:N),x(1:N));
rxx = rxx/max(rxx);
rxy=xcorr(x(1:N),y(1:N));
rxy = rxy/max(rxy);
[c, d] = max(rxx);
k = (rxy - rxx);
[a, b] = max(k);
n0 = d-b
a