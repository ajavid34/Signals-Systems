syms y(t)
Dy = diff(y);
ode = diff(y,t,2) + 3*diff(y,t) + 2*y == 5*heaviside(t);
cond1 = y(0) == 1;
cond2 = Dy(0) == 1;
conds = [cond1 cond2];
ySol(t) = dsolve(ode,conds);
ySol = simplify(ySol)
time=[0:0.1:10];
Y=subs(ySol,time);
figure
plot(time,Y)
ylim ([-0.5 3]);
grid on;
title('Solution of ODE Equation ');
xlabel('Time(s)');
ylabel('y(t)');