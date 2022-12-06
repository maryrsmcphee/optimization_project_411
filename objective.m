function obj = objective(u)
    [existing_garden_coords, grocery_store_coords, gathering_place_coords] = import_data();
    
    dist_gardens = dist_2_coords(u, existing_garden_coords);
    dist_groceries = dist_2_coords(u, grocery_store_coords);
    dist_gathering = dist_2_coords(u, gathering_place_coords);
    
    obj = (-0.5*dist_gardens - 0.5*dist_groceries + dist_gathering); 

end

function dist_coord = dist_2_coords(u, coord_set)
    d_x = 0; 
    d_y = 0; 
    num_coords = size(coord_set, 1);
    for i = 1:num_coords
        d_x = d_x + abs(u(1)-coord_set(i, 1));
        d_y = d_y + abs(u(2)-coord_set(i, 2));
    end
%   Normalize for number of coordinates (a disproportionate amount of
%   gardens/groceries/etc doesn't skew results
    dist_coord = sqrt(d_x^2+d_y^2)/num_coords; 
end