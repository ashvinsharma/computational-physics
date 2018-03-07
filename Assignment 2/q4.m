clear all;
clear variables;

u = 1800;       % m/s
m0 = 160000;    % kg
q = 2600;       % kg/s
g = 9.81;        % m/s^2
vf = 750;       % m/s

v = @(t) u.*log(m0./(m0 - q.*t)) - g.*t - vf;

td = 10:50;
vt = v(td);
plot(td, vt, 'b');
grid on
hold off
xlabel('time (t)');
ylabel('velocity (m/s)');
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';

%using secant method
counter = 1;
n = 1000;
t1 = 25;
t2 = 30;
tolerance = 0.01;
while(counter <= n)
    counter = counter + 1;
    t3 = (t1*v(t2) - t2*v(t1)) / (v(t2) - v(t1));
    if abs(v(t3)) < tolerance, break, end
    t1 = t2;
    t2 = t3;
end
disp(t3);