clc; clear;

% rng(0);
n = 15;
a = randi(5, [1, n]);
disp(a)

for i = a
    disp(i)
    if i < 3
        fprintf("Ha Ha! break\n")
        break
    end
    
    if i < 4
        fprintf("Ah $@it, here we go again\n")
        continue
    end
  
end