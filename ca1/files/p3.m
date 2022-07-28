x = [2 -2 7 -3 2 4 -6 1];
y = [5 2 4 -6 5 1 -8 0 7 2 9];
n=length(x);
m=length(y);
X=[x,zeros(1,n)]; 
H=[y,zeros(1,m)]; 
for i=1:n+m-1
    w(i)=0;
        for j=1:m
            if(i-j+1>0)
                w(i)=w(i)+X(j)*H(i-j+1);
            end
        end
end
u = conv(x,y);
subplot (2,1,1);
plot(w , 'Color','r')
title('without using conv function ')
xlabel('n')
subplot (2,1,2);
plot(u , 'Color','b')
title('using conv function ')
xlabel('n')