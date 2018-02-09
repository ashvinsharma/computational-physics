clc;
clear variables;
clear all;

g = 9.8;    %m/s^2
t = 4;      %sec
v = 36;      %m/s
d = 0.25;    %kg/m
m = 10: 200;

f = @(m) sqrt(g .* m / d) .* tanh(t .* sqrt(g * d ./ m)) - v;

fm = f(m);

plot(m, fm);
xlabel("Mass (kg)");
ylabel("F");
grid();

m1 = 120; %kg
m2 = 150; %kg
m3 = (m1 + m2) / 2;

while(abs(f(m3)) > 0.00001)
    fprintf("condition: %d\n", abs((m2 - m1) / m1));
    m3 = (m1 + m2) / 2; %kg
    
    if f(m1) * f(m3) < 0
        m2 = m3;
    elseif f(m2) * f(m3) < 0
        m1 = m3;
    end
end

disp(m3);