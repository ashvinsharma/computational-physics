clc;
clear variables;

x = -5: 0.1: 2;

f = @(x) exp(-x) - 2 * x + 1;
g = @(x) (1 + exp(-x)) / 2;

y1 = x;
y2 = g(x);
plot(x, y1);
grid();
hold on
plot(x, y2);
hold off
xlabel('x');
ylabel('y');

counter = 0;
n = 1000;
x1 = 0.5;
tol = 0.000001;

while(counter <= n)
    counter = counter + 1; 
    if abs(x1 - g(x1)) / g(x1) < tol, break, end
    x1 = g(x1);
end

fzero(f, [-5, 2]);