function dz = DCmotor(t,z)
%-----------------------------------------------------
% Parameters:
Ra = 2;
La = 0.023;
Ke = 0.01;
Kt = 0.01;
b = 0.0012;
J = 0.001;

% Input Voltage:
%t = linspace(t(1),t(end),565);
%A = 1;
%f = 0;
%w = 2*pi*f;
%Va = A*sin(w*t);
Va = 1;
%-----------------------------------------------------
% State Vector: dz
% dz = [z1_d;z2_d;z3_d]
dz = zeros(3,1); % Size: # of states we need
%-----------------------------------------------------

%-----------------------------------------------------
%Definition of the dynamics of the system
dz(1) = z(2);
dz(2) = (1/J)*(Kt*z(3)-b*z(2));
dz(3) = (1/La)*(Va-Ke*z(2)-Ra*z(3));

end