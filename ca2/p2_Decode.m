[a,Fs] = audioread("a.wav");

fr = [697 770 852 941];
fc = [1209 1336 1477];
fs = 8000;
Ts = 1/fs;
Ton = 0.1;
Toff = 0.1;
t = 0:Ts:Ton-Ts;
sample_signals=[];
key=[];
for i=1:4
    for j=1:3
        y1 = sin(2*pi*fr(i)*t);
        y2 = sin(2*pi*fc(j)*t);
        y = (y1 + y2)/2;
        sample_signals= [sample_signals;y];
    end
end
n = 10*size(a,1)/Fs;
start = 1;
for i=1:n/2
    r=0;
    code=-1;
    tmp = a(start : Fs*0.1+start-1);
    test = tmp.';
    for k=1:11
        cov=0;
        sigx=0;
        sigy=0;
        for l=1:800
            cov=sample_signals(k,l)*test(1,l)+cov;
            sigx=sample_signals(k,l)*sample_signals(k,l) + sigx;
            sigy=test(1,l)*test(1,l) + sigy;
        end
        r0 = cov/(sqrt(sigx)*sqrt(sigy));
        if (r0 > r)
            r = r0;
            code=rem(k,11);
        end
    end
    key=[key code];
    start =Fs*0.2+start;
end
key
