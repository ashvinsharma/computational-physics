clear variables;
close all;

g = 9.8;    % m/s^2
d = 0.25;   % kg/m
v = 36;     % m/s
t = 4;      % secs

% Anonymous function
fm2 = @(md)sqrt(g*md/d) .* tanh(sqrt(g*d ./ md)*t) -v;

% Note: Value of m is defined after declaration of fm2
% 1D Array
m = linspace(50, 200); %kg

% Defining array
fval = fm2(m);
plot(m, fval);
xlabel('mass (kg)');
ylabel('f (m/s)');
grid;
