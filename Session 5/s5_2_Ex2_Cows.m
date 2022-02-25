clc; clear;

%% Initial parameters
n = 8; % number of cows
m = 6; % number of yogurt pot
names = strcat('Cow', string(1:n)');
potnames = strcat('pot', string(1:m)');
nex = ceil(n/2);

%% Step 1
rng(0);
R = rand(m, n);
S = sum(R, 2);
R =  R./S;


R = double(uint32(R*10000))/100;
T1 = array2table(R);
T1.Properties.VariableNames = names;
T1.Properties.RowNames = potnames;
disp(T1)

%% Step 2
[~, ind] = sort(R, 2, 'descend');
T2 = array2table(names(ind)');
T2.Properties.VariableNames = potnames;
disp(T2)

%% Step 3
R =  rand(m, n);

for i = 1:m
    r = randperm(n, nex);
    R(i, randperm(n, nex)) = 0; 
end
R = R./sum(R, 2);

R = double(uint32(R*10000))/100;
T3 = array2table(R);
T3.Properties.VariableNames = names;
T3.Properties.RowNames = potnames;
disp(T3);

%% Step 4
[R1, ind] = sort(R, 2, 'descend');
T4 = array2table(names(ind(:,1:n - nex))');
T4.Properties.VariableNames = potnames;
disp(T4)
    