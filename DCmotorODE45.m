% ODE45(function - time of simulation(s) - initial condition) 
time = 5;
[t,x] = ode45(@DCmotor,[0 time], [0 0 0]);
%-----------------------------------------------------
clf
figure(1)
plot(t,x(:,1),'r','LineStyle',':','LineWidth',2) % First state: theta_d
grid on
title("Angular Position"); xlabel("Time [s]");ylabel("[rad]")
hold on

index = find(out.ScopeData.time == time);
plot(out.ScopeData.time(1:index),out.ScopeData.signals(1).values,'b','LineStyle','--','LineWidth',2)
legend('ODE45','Scope')
% -------------------------------------------------------------------------------------------
figure(2)
plot(t,x(:,2),'r','LineStyle',':','LineWidth',2) % Second state: theta_dd
grid on
title("Angular Velocity"); xlabel("Time [s]");ylabel("[rad/s]")
hold on

index = find(out.ScopeData.time == time);
plot(out.ScopeData.time(1:index),out.ScopeData.signals(2).values,'b','LineStyle','--','LineWidth',2)
legend('ODE45','Scope')
% -------------------------------------------------------------------------------------------
figure(3)
plot(t,x(:,3),'r','LineStyle',':','LineWidth',2) % Third state: current
grid on
title("Armature Current"); xlabel("Time [s]");ylabel("[A]")
hold on

index = find(out.ScopeData.time == time);
plot(out.ScopeData.time(1:index),out.ScopeData.signals(3).values,'b','LineStyle','--','LineWidth',2)
legend('ODE45','Scope')