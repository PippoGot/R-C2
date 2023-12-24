initial_conditions_1 = [8, 8, 0];
initial_conditions_2 = [6, 3, 2*pi];
initial_conditions_3 = [-8, -8, 3*pi/2];

initial_conditions_trans = state_transformation([0,0,0], initial_conditions_1);
initial_conditions_trans_2 = state_transformation([0,0,0], initial_conditions_2);
initial_conditions_trans_3 = state_transformation([0,0,0], initial_conditions_3);
