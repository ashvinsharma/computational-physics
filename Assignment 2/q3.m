clear all;
clear variables;

g = @(x) 2*sin(sqrt(x));

xd = 0:0.01:4;
gx = g(xd);
h = xd;
plot(xd, gx, 'r');
hold on
plot(xd, h, 'g');
hold off
grid();
xlabel('x');
ylabel('functions');

counter = 0;
n = 1000;
x1 = 0.5;
tol = 0.00001;

while(counter <= n)
    counter = counter + 1; 
    if abs(x1 - g(x1)) / g(x1) < tol, break, end
    x1 = g(x1);
end

disp(x1);