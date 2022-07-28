[x, Fs] = audioread("voice003.wav");
delay = 0.85; % 1s delay  
alpha = 0.34; % echo strength  
D = delay*Fs;   
h = zeros(size(x,1),1);
h(1)=1;
h(D) = alpha;
y = conv(x(:,1),h);
y = y(1:(size(x) + D));
sound(y,Fs)
audiowrite("y_best.wav",y,Fs);