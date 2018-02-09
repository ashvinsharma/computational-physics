clear variables;
close all;

d = 0.25;   % kg/m
v = 36;     % m/s
t = 4;      % secs

% 1D Array
m = linspace(50, 200, 100); %kg

% Defining array
fval = fm(m, d, v, t);
plot(m, fval);
xlabel('mass (kg)');
ylabel('f (m/s)');
print('-dpng','graph.png');
grid;
