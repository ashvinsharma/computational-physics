function fm_array = fm(md, d, v, t)
%FM  maximum mass of a human which can bungee jump
%   without getting hurt
%   Detailed explanation goes here

g = 9.8;    % m/s^2

fm_array = sqrt(g*md/d) .* tanh(sqrt(g*d ./ md)*t) -v;
end

