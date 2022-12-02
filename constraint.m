function [c, ceq] = constraint(u)

[~, ~, ~, possible_location_coords] = import_data(); 

% ceq1 = (abs(-80.4037 - u(1)) < 0.001 | abs(-80.4041 - u(1)) < 0.001) - 1;
% ceq2 = (abs(43.4306 - u(2)) < 0.001 | abs(43.4315 - u(1)) < 0.001) - 1;

i_max = size(possible_location_coords, 1);
f = zeros(i_max);
for i = 1:i_max
    f(i) = (abs(possible_location_coords(i, 1) - u(1)) < 0.001 & abs(possible_location_coords(i, 2) - u(2)) < 0.001);
end

ceq = ((f(1) | f(2)) | f(3)) - 1; 
c = [];

end 
