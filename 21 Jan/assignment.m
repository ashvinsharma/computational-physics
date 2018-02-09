clear;
clear variables;
clc;
% % Q1(a)
% t = 4:6:35;
% %using linspace function
% t1 = linspace(4, 34, 6);
% 
% % (b)
% x = -4:2;
% x1 = linspace(-4, 2, 7);
% 
% 
% % Q2 (a)
% v = linspace(-2, 1.5, 8);
% v1 = -2: 0.5: 1.5;
% %(b)
% r = linspace(8, 4.5, 8);
% r1 = 8 : -0.5: 4.5;

% % %Q3 (a)
% a = 2;
% b = 5;
% x = 0: pi / 40 : pi / 2;
% y = b * exp(-a * x) .* sin(b * x) .* (0.012 * x.^4 - 0.15 * x.^3 + 0.075 * x.^2 + 2.5 * x);
% plot(x, y);
% grid();
% xlabel('x');
% ylabel('y');

% %Q4
% t = linspace(0, 70);
% c = 4.84 * exp(-0.034 * t);
% plot(t,c,'--g');
% xlabel('t (min) ');
% ylabel('c (ppm)');
% t1 = 10: 10: 60;
% c1 = [3.4, 2.6, 1.6, 1.3, 1.0, 0.5];
% hold on
% plot(t1, c1, 'rdiamond', 'MarkerFaceColor', 'r');

% %Q5
% x = 0.9;
% out = sin_func(x);

% %Q6
% marks = 90;
% grade = letter(marks);
% disp(grade);

%Q8
