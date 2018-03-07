clc;
clear variables;
clear all;

% Equation used here is y = x^2 - 1
x = [-1, 0, 1];
y = [0, -1, 0];
xf = 2;

n = length(x);
B = zeros(n);
B(:,1) = y(:);

% Filling the B-Matrix, all we need 
% in to calculate yf is the first row 
for j = 2: n
    for i = 1: n - j + 1
        B(i, j) = (B(i+1,j-1) - B(i, j-1))/(x(i+j-1) - x(i));
    end
end

% Making Newton's polynomial
xp = 1;
yf = B(1,1);
for j = 2: n 
    xp = xp * (xf - x(j-1));
    yf = yf + B(1, j) * xp;
end

disp(yf);