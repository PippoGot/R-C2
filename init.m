%% Clearing


clear 
close all
clc


%% Agents Initial Conditions


initial_conditions_1 = [8, 8, 0];
initial_conditions_2 = [6, 3, 2*pi];
initial_conditions_3 = [-8, -8, 3*pi/2];


initial_conditions_trans_1 = state_transformation([0,0,0], initial_conditions_1);
initial_conditions_trans_2 = state_transformation([0,0,0], initial_conditions_2);
initial_conditions_trans_3 = state_transformation([0,0,0], initial_conditions_3);


%% Control Strategy Selection


% Posture Regulation Strategy
% posture = 'posture_subsys';
posture = 'cartesian_subsys';

% Trajectory Tracking Strategy
trajectory = 'feed_lin_sagittal_sub';                   % 92.00%
% trajectory = 'feed_lin_double_deriv_sub';             % 94.00%
% trajectory = 'trajectory_tracking_linear_sub';        % 50.67%
% trajectory = 'trajectory_tracking_non_linear_sub';    % 94.67%


% Parameters
distance_threshold = 4;

sagittal_K = [10; 5];

double_deriv_Kp = [2 0; 0 5];
double_deriv_Kd = [5 0; 0 5];

csi = 1/sqrt(2);
a = 5;

b = 2;


% vvv DON'T CHANGE THIS CODE IF YOU DON'T KNOW WHAT YOU ARE DOING !!! vvv

set_param('full_system', "FastRestart", "off");

% Change the posture regulation strategy
set_param('full_system/Agent 1/PR', 'ReferencedSubsystem', posture);

% Change the trajectory tracking strategy
set_param('full_system/Agent 1/TT', 'ReferencedSubsystem', trajectory);

% Save model
 save_system('full_system', 'SaveDirtyReferencedModels', 'on')

% ^^^ --------------------------------------------------------------- ^^^


