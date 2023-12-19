initial_conditions = [10, 10, pi/2];
initial_conditions_2 = [-10, -9, 0];
initial_conditions_3 = [10, -9, 0];

initial_conditions_trans = state_transformation([0,0,0], initial_conditions);

initial_conditions_trans_2 = state_transformation([0,0,0], initial_conditions_2);

initial_conditions_trans_3 = state_transformation([0,0,0], initial_conditions_3);