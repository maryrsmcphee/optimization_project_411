function [c, ceq] = constraint(u)

    [~, ~, ~, possible_location_coords] = import_data(); 
    
    i_max = size(possible_location_coords, 1);
    
    f = 0; 
    for i = 1:i_max
        f = f | (abs(possible_location_coords(i, 1) - u(1)) < 0.01 & abs(possible_location_coords(i, 2) - u(2)) < 0.01);
    end
    
    ceq = f - 1; 
    c = [];

end 
