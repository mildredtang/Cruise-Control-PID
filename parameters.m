%% Parameters setting
rho = 1.3;                  % The density of air in kg/m^3.
A = 2.4;                    % The cross-sectional area of the vehicle in m^2. - From Chap.4
CD = 0.32;                  % A dimensionless drag coefficient. - From Chap.4
m = 1600;                   % Mass of the car. - From FBSwiki

theta = 30; % Slope of the road.
g = 9.8; % Gravitational constant.

F_g = m*g*sin(theta);               % The forces due to gravity.
F_r = m*g*Cr*(v/abs(v));            % The forces due to rolling friction.
F_a = (1/2)*rho*CD*A*v*abs(v);      % The forces due to aerodynamic drag.
d = F_g+F_r+F_a;                    % Total disturbance.

v0 = 20;            % Initial speed of the car.
y = v - v0;         % y = delta_v, i.e. the linearlised parameter.
