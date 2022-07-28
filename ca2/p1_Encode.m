fr = [697 770 852 941];
fc = [1209 1336 1477];
fs = 8000;
Ts = 1/fs;
Ton = 0.1;
Toff = 0.1;
t = 0:Ts:Ton-Ts;
key = [8 1 0 1 9 8 3 7 5];
final_sound = [];
off = 0:Ts:Toff-Ts;
silent = zeros(1,size(off,2));
z =[];
for i = 1:9
    k = key(i);
     switch (k)                  
        case {1 2 3 'a' 'A'}
            f1=fr(1);
        case {4 5 6 'b' 'B'}
            f1=fr(2);
        case {7 8 9 'c' 'C'}
            f1=fr(3);
        case {'*' 0 '0' '#' 'D'}
            f1=fr(4);
     end
     switch (k)                    
        case {1 4 7 '*'}
            f2=fc(1);
        case {2 5 8 0 '0'}
            f2=fc(2);
        case {3 6 9 '#'}
            f2=fc(3);
     end
     y1 = sin(2*pi*f1*t);
     y2 = sin(2*pi*f2*t);
     y = (y1 + y2)/2;
     z = [z y silent];
end
sound(z,fs)
audiowrite("y.wav",z.',fs);