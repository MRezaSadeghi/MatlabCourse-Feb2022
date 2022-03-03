clc; clear;

choosen(150, 5)
global cc

cc = 0;

function y = choosen(a, b)
    if a < b
        error("Error: The first input must be greater then the second one.")
    elseif (a < 0) || (b < 0)
        error("Error: Just positive values are acceptable.")
    elseif (a == b) || (b==0)
        y = 1;
    else
        y = choosen(a-1, b-1) + choosen(a-1, b);
    end
    global cc
    cc = cc + 1;
    disp(cc)
    
end