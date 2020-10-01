%% Define ODE system
function dydu = cruise_control(u,y)

dydu = zeros(1,1); % Set dvdu as a 1x1 matrix, i.e. scalar.

rho = 1.3;                  % The density of air in kg/m^3.
A = 2.4;                    % The cross-sectional area of the vehicle in m^2. - From Chap.4
CD = 0.32;                  % A dimensionless drag coefficient. - From Chap.4
m = 1600;                   % Mass of the car. - From FBSwiki

%d = 10;
v0 = 20;

%dydu = -(A/m)*rho*CD*v0*y + u/m + (1/(2*m))*A*rho*CD*v0^2 + d/m;
dydu = -(A/m)*rho*CD*v0*y + u/m + (1/(2*m))*A*rho*CD*v0^2;
%% Solve the dynamics

[u,y] = ode45(@cruise_control, [0,10], 0);
plot(u,y(:,1));

