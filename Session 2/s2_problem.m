clear; clc;

%% Data
D = 0.2;
g = 9.8;
L = 2;

rhoa = 2700;
Ea = 70e9;

rhos = 7800;
Es = 200e9;

%% Initial Data
V = (D/2)^2*pi*L;
I = pi*D^4/64;
Ma = rhoa*V;
Ms = rhos*V;

%% Buckle
eLen_1 = [L, L/2, 0.669*L, 2*L];
states = ["state1", "state2", "state3", "state4"];
P1a = pi^2*Ea*I./eLen_1.^2;
fprintf("%s for Alum %2.2f Ton\n", [states; P1a/1000/g])
fprintf("-------\n")
P1s = pi^2*Es*I./eLen_1.^2;
fprintf("%s for Steel %2.2f Ton\n", [states; P1s/1000/g])
 fprintf("The average of 100 random numbers: %2.2f", mean(rand(1, 100)))

fprintf("g%d\n", double(23423))
