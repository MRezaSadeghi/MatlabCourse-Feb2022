clc; clear;

n = 6;
val = 2;
coinval = [100, 50, 20, 10, 5, 1]/100;
coins = zeros(1, length(coinval));
counter = 0;

for c1 = floor(val/coinval(1)):-1:0
    coins(1) = c1;
    s = coinsum(coins);
    
    % Coin 2
    for c2 = floor((val - s)/coinval(2)):-1:0
        coins(2) = c2;
        s = coinsum(coins);
        
        % Coin 3
        for c3 = floor((val - s)/coinval(3)):-1:0
            coins(3) = c3;
            s = coinsum(coins);
            
            % Coin 4
            for c4 = floor((val - s)/coinval(4)):-1:0
                coins(4) = c4;
                s = coinsum(coins);
                
                % Coin 5
                for c5 = floor((val - s)/coinval(5)):-1:0
                    coins(5) = c5;
                    s = coinsum(coins);
                    
                    % Coin 6
                    for c6 = floor((val - s)/coinval(6)):-1:0
                        coins(6) = c6;
                        s = coinsum(coins);
                        
                        if s == val
                            counter = counter + 1;
                            strz = "accept";
                            % fprintf("%s:%s\n", [strz, join(string(coins), '-')])
                        else
                            strz = "reject";
                        end
                        % fprintf("%s:%s\n", [strz, join(string(coins), '-')])

                    end
                end
            end
        end   
    end
end
disp(counter)
%             if s == val
%                 counter = counter + 1
%                 disp(coins)
%             end
%                 if s == val
%                     counter = counter + 1;
%                     fprintf("Final:%s\n", join(string(coins), '-'))
%                     s = 0;
%                     coins = coins*0;
%                 else
%                     fprintf("sep  :%s\n", join(string(coins), '-'))

function s = coinsum(x)
    s = dot(x, [100, 50, 20, 10, 5, 1]);
    s = s/100;
end