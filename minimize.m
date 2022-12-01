lb = [-80.4844980, 43.4304841]; 
ub = [-80.4037291, 43.4663359]; 

x_coord_guess = -80.44;
y_coord_guess = 43.445; 
u = [x_coord_guess, y_coord_guess];

options = optimoptions('fmincon','Display','iter'); % Display each iteration
uopt = fmincon(@objective,u,[],[],[],[],lb,ub,@constraint,options); % Call fmincon function

display(uopt);
