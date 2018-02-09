clear all;
clear variables;

r = 225;            % ohm
c = 0.6 * 10^-6;    % faraday
l = 0.5;            % henry

% important point to note: 100 is subtracted
% from the equation because we need to find
% root at z = 100; Secant method works only 
% around y = 0.
z = @(w) 1./...
    sqrt( 1/(r^2) + (w.*c - 1./(w.*l)).^2 ) - 100;

w = 1:1000;
zw = z(w);
plot(w, zw);
xlabel('w');
ylabel('Z');
grid();

counter = 0;
n = 1000;
w1 = 100;
w2 = 200;
tolerance = 0.0001;
while(counter <= n)
    counter = counter + 1;
    w3 = ((w1 * z(w2)) - (w2 * z(w1))) /...
        (z(w2) - z(w1));
    if abs(z(w3)) < tolerance, break, end
    w1 = w2;
    w2 = w3;
end

disp(w3);