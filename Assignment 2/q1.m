clear all;
clear variables;

x = 90;     % m
y0 = 1.8;   % m
yr = 1;     % m
v0 = 30;    % m/s
g = 9.8;     % m/s^2

y = @(theta0) (tan(theta0) * x) - ((g * (x^2)) ./ ...
    (2 .* (v0^2) .* cos(theta0).^2)) + y0 - yr;

theta = 0:  0.05: pi/2;
ym = y(theta);
plot(theta, ym);
xlabel("theta");
ylabel("function");
grid();

counter = 1;
theta1 = 0.65;	% 0.88
theta2 = 0.7;   % 0.92
n = 1000;
tolerance = 0.00000001;
while(counter <= n)
    counter = counter + 1;
    theta3 = ((theta1 * y(theta2)) - (theta2 * y(theta1))) / (y(theta2) - y(theta1));
    if abs(y(theta3)) < tolerance, break, end
    theta1 = theta2;
    theta2 = theta3;
end

disp(theta3);