function state_tf = fcn(q_d, q)

x = q(1);
y = q(2);
theta = q(3);

rho = sqrt(x^2 + y^2);
gamma = atan2(y,x) + pi - theta;
delta = gamma + theta;

state_tf = [rho, gamma, delta];
