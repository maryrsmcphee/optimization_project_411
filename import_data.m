function [existing_garden_coords, grocery_store_coords, gathering_place_coords, possible_locations_coords] = import_data()

% IMPORT EXISTING GARDEN COORDINATE DATA 
opts = spreadsheetImportOptions("NumVariables", 3);

% Specify sheet and range
opts.Sheet = "Existing Gardens";
opts.DataRange = "A2:C16";

% Specify column names and types
opts.VariableNames = ["Name", "LatitudeY", "LongitudeX"];
opts.VariableTypes = ["string", "double", "double"];

% Specify variable properties
opts = setvaropts(opts, "Name", "WhitespaceRule", "preserve");
opts = setvaropts(opts, "Name", "EmptyFieldRule", "auto");

% Import the data
existing_gardens = readtable("/Users/marymcphee/Documents/MATLAB/SYDE 411/optimization_project_411/Coordinates.xlsx", opts, "UseExcel", false);
garden_names = table2array(existing_gardens(:,1));
ecg_y_lat = table2array(existing_gardens(:,2));
ecg_x_long = table2array(existing_gardens(:,3));
existing_garden_coords = [ecg_x_long ecg_y_lat];

% IMPORT GROCERY COORDINATE DATA 
opts2 = spreadsheetImportOptions("NumVariables", 3);

% Specify sheet and range
opts2.Sheet = "Grocery Stores";
opts2.DataRange = "A2:C17";

% Specify column names and types
opts2.VariableNames = ["Name", "LatitudeY", "LongitudeX"];
opts2.VariableTypes = ["string", "double", "double"];

% Specify variable properties
opts2 = setvaropts(opts2, "Name", "WhitespaceRule", "preserve");
opts2 = setvaropts(opts2, "Name", "EmptyFieldRule", "auto");

% Import the data
grocery_stores = readtable("/Users/marymcphee/Documents/MATLAB/SYDE 411/optimization_project_411/Coordinates.xlsx", opts2, "UseExcel", false);
grocery_names = table2array(grocery_stores(:,1));
grocery_y_lat = table2array(grocery_stores(:,2));
grocery_x_long = table2array(grocery_stores(:,3));
grocery_store_coords = [grocery_x_long grocery_y_lat];

% IMPORT GATHERING PLACE COORDINATE DATA 
opts3 = spreadsheetImportOptions("NumVariables", 3);

% Specify sheet and range
opts3.Sheet = "Community Gathering Places";
opts3.DataRange = "A2:C2";

% Specify column names and types
opts3.VariableNames = ["Name", "LatitudeY", "LongitudeX"];
opts3.VariableTypes = ["string", "double", "double"];

% Specify variable properties
opts3 = setvaropts(opts3, "Name", "WhitespaceRule", "preserve");
opts3 = setvaropts(opts3, "Name", "EmptyFieldRule", "auto");

% Import the data
gathering_places = readtable("/Users/marymcphee/Documents/MATLAB/SYDE 411/optimization_project_411/Coordinates.xlsx", opts3, "UseExcel", false);
places_names = table2array(gathering_places(:,1));
places_y_lat = table2array(gathering_places(:,2));
places_x_long = table2array(gathering_places(:,3));
gathering_place_coords = [places_x_long places_y_lat];

% % IMPORT PARKS AND SCHOOL DATA
% opts4 = spreadsheetImportOptions("NumVariables", 3);
% 
% % Specify sheet and range
% opts4.Sheet = "Parks + Schools (Possible Locations";
% opts4.DataRange = "A2:C2";
% 
% % Specify column names and types
% opts4.VariableNames = ["Name", "LatitudeY", "LongitudeX"];
% opts4.VariableTypes = ["string", "double", "double"];
% 
% % Specify variable properties
% opts4 = setvaropts(opts4, "Name", "WhitespaceRule", "preserve");
% opts4 = setvaropts(opts4, "Name", "EmptyFieldRule", "auto");
% 
% % Import the data
% possible_locations = readtable("/Users/marymcphee/Documents/MATLAB/SYDE 411/optimization_project_411/Coordinates.xlsx", opts4, "UseExcel", false);
% locations_names = table2array(possible_locations(:,1));
% locations_y_lat = table2array(possible_locations(:,2));
% locations_x_long = table2array(possible_locations(:,3));
% possible_locations_coords = [locations_y_lat locations_x_long];

end
