%% Clearing

clear 
close all
clc


%% Control Strategy Selection

posture = 'posture_subsys';
trajectory = 'feed_lin_sagittal_sub';

% vvv DON'T CHANGE THIS CODE IF YOU DON'T KNOW WHAT YOU ARE DOING !!! vvv

% change the posture regulation strategy
set_param('full_system/Agent 1/PR', 'ReferencedSubsystem', posture);
set_param('full_system/Agent 2/PR', 'ReferencedSubsystem', posture);
set_param('full_system/Agent 3/PR', 'ReferencedSubsystem', posture);

% Change the trajectory tracking strategy
set_param('full_system/Agent 1/TT', 'ReferencedSubsystem', trajectory);
set_param('full_system/Agent 2/TT', 'ReferencedSubsystem', trajectory);
set_param('full_system/Agent 3/TT', 'ReferencedSubsystem', trajectory);

% ^^^ --------------------------------------------------------------- ^^^

%% Agents Initial Conditions

initial_conditions_1 = [8, 8, 0];
initial_conditions_2 = [6, 3, 2*pi];
initial_conditions_3 = [-8, -8, 3*pi/2];

initial_conditions_trans_1 = state_transformation([0,0,0], initial_conditions_1);
initial_conditions_trans_2 = state_transformation([0,0,0], initial_conditions_2);
initial_conditions_trans_3 = state_transformation([0,0,0], initial_conditions_3);
