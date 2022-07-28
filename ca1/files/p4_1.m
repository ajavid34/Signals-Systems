[x, Fs] = audioread("voice003.wav");
t = (0:length(x)-1) / Fs;
figure
plot(t, x)
ylabel('magnitude')
xlabel('t(s)')
audiowrite("x.wav",x,Fs);
% sound(x,Fs);  
delay = 1; % 1s delay  
alpha = 0.81; % echo strength  
D = delay*Fs;   
h = zeros(size(x,1),1);
h(1)=1;
h(D) = alpha;
figure
plot(h)
title('Impulse response signal for n_0 = 44100 and a = 0.81')
ylabel('magnitude')
xlabel('n')
y = conv(x(:,1),h);
y = y(1:(size(x) + D));
figure
plot(y)
title('Echo signal for n_0 = 44100 and a = 0.81')
ylabel('magnitude')
xlabel('n')
%sound(y,Fs)
audiowrite("y.wav",y,Fs);