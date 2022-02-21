clc; clear;

n = input("Gear = ");
v = input("Speed in km/h = ");

v = v/3.6; %m/s
R = 0.3; %m
alpha = 3.5;


switch n
    case 1
        rate = 3.81;
    case 2
        rate = 2.71;
    case 3
        rate = 1.37;
    case 4
        rate = 1;
    case 5
        rate = 0.81;
end

spd = v/R * 30/pi;
motor_spd = spd*rate/1000*alpha;
fprintf("Motor rev = %2.2f x1000RPM\n", motor_spd)

if motor_spd > 3.5
    fprintf("Shift to higher gear\n")
elseif motor_spd < 0.8
    fprintf("Shift to lower gear\n")
else
    fprintf("Just do nothing\n")
end