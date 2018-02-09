function letter_grade = letter(num_grade)
%LETTER Summary of this function goes here
%   Detailed explanation goes here
if  num_grade >= 90 && num_grade <= 100 
    letter_grade = 'A';
elseif num_grade >= 70 && num_grade < 90 
    letter_grade = 'B';
elseif num_grade >= 50 && num_grade < 70 
    letter_grade = 'C';
elseif num_grade >= 30 && num_grade < 50 
    letter_grade = 'D';
elseif num_grade <= 30 
    letter_grade = 'F';
end
end

