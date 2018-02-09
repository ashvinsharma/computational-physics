clear;

g = 9.8;        %m/s^2
m1 = 0.07;     %m
m2 = 0.065;    %m
m3 = 0.065;    %m
k1 = 3;         %N/m
k2 = 2;        %N/m
k3 = 5;         %N/m

A = [(k1+k2)	-k2         0
     -k2        (k1+k2)     -k3
      0         -k3         k3];
b = [m1*g
     m2*g
     m3*g];
aug = [A b];
[n, m] = size(aug);
x = zeros(n,1);
for k = 1:n
    for i= k+1:n
        fact = -(aug(i,k)/aug(k,k));
        aug(i,k) = 0;
        for j=i:m
            aug(i,j) = aug(i,j) + fact*aug(k,j);
        end
    end
end

delta = zeros(n,1);
x(n) = aug(n,m)/aug(n,n);
for k = n-1:-1:1
    for i=n:-1:k+1
        delta(k) = aug(k,m) - aug(k,i)*x(i);
    end
    x(k) = delta(k)/aug(k,k);
end