lb = [-80.4844980, 43.4304841]; 
ub = [-80.4037291, 43.4663359]; 

x_coord_guess = -80.44;
y_coord_guess = 43.445; 
u = [x_coord_guess, y_coord_guess];

options = optimoptions('fmincon','Display','iter'); % Display each iteration
uopt = fmincon(@objective,u,[],[],[],[],lb,ub,@constraint,options); % Call fmincon function

display(uopt);

% Question: 
% 1) Currently the equality constraint is kinda janky - we could do it as
% is or we could find best possible location and find closest possible
% location (below)

% Possible method below - doesn't work because gathering places doesn't exist: 
% [~,~,~,gathering_places] = import_data();
% 
% d_x = 0; 
% d_y = 0; 
% num_coords = size(gathering_places, 1);
% dist_coord = zeros(num_coords);
% for i = 1:num_coords
%     d_x = d_x + abs(u(1)-gathering_places(i, 1));
%     d_y = d_y + abs(u(2)-gathering_places(i, 2));
%     dist_coord(i) = sqrt(d_x^2+d_y^2); 
% end
% % returns minimum value & index of dist_coord array
% [M, I] = min(dist_coord);
% 
% optimal = gathering_places(I);
% disp('The optimal location for a garden is: ')
% disp(optimal);
