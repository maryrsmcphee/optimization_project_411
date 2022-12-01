function [c, ceq] = constraint(u)

% [~, ~, ~, possible_locations_coords] = import_data(); 
% 
ceq1 = (abs(-80.4037 - u(1)) < 0.001 | abs(-80.4041 - u(1)) < 0.001) - 1;
ceq2 = (abs(43.4306 - u(2)) < 0.001 | abs(43.4315 - u(1)) < 0.001) - 1;

ceq = [ceq1 ceq2];
% ceq = []; 
c = [];
end 
