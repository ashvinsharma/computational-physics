clc;
clear variables;

g = 9.8;    %m/s^2
t = 4;      %sec
v = 36;      %m/s
d = 0.25;    %kg/m
m = 10: 200;

f = @(m) sqrt(g .* m / d) .* ...
    tanh(t .* sqrt(g * d ./ m)) - v;

fm = f(m);

plot(m, fm);
xlabel("Mass (kg)");
ylabel("F");
grid();

counter = 0;
n = 1000;
x1 = 100;
x2 = 130;
tolerance = 0.00000001;
while(counter <= n)
    counter = counter + 1;
    x3 = ((x1 * f(x2)) - (x2 * f(x1))) ...
        / (f(x2) - f(x1));
    if abs(f(x3)) < tolerance, break, end
    x1 = x2;
    x2 = x3;
end
