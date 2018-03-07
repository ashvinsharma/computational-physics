function out = sin_func(x)
%SIN Summary of this function goes here
%   Detailed explanation goes here
out = 0;
for n = 0: 4
    out = out + ((-1)^n) * (x / factorial(2 * n + 1));
    fprintf('out: %d\t', out);
    err = abs((sin(x) - out) / sin(x));
    fprintf('err: %d\n', err);
end
end

