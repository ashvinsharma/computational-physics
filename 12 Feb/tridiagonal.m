function x = tridiagonal(e, f, g, r)
%TRIDIAGONAL Summary of this function goes here
%   Detailed explanation goes here
    [n, m] = size(f);
    for i = 2 : n
        f(i) = f(i) - g(i)*(e(i)/f(i-1));
        r(i) = r(i) - r(i-1)*(e(i)/f(i-1));
    end   
   
    x(n) = r(n)/f(n);
    for i = n-1: -1: 1
        x(i) = (r(i) - g(i)*x(i+1))/f(i);
    end
    x = x';
end

