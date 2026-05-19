T = 0.05;
Tsim = 1e-7;
Tcarrier = 50e-6; % fcarrier = 20kHz

% Treal is used to simulate 
% real-world conditions of the MCU
%------------------------------
Treal = 25e-6; 

% 2*Tspeed is set for the speed-loop
% PI controller and is slower than 
% the current-loop PI controller
%--------------------------------

%Init:
% Rs = 0.62 (Ohm)
% Ls = 0.002075 (H)
% J = 36.17e-05 (kg*m^2)
% B = 9.444e-05 (N.m.s)
% K_t = 1.5*np*psi_m 
%     = 0.51762 (N*m/A)
    %psi_m: flux leakage
% Rated currernt: 
%   Iq = Te/Kt = 11.59A

np = 4;
ff_gain = 1;

%Current Loop:
Kp_current = 80 ;
Ki_current = 100 ;

%Speed Loop:
Kp_speed = 0.5;
Ki_speed = 30;

%Position Loop:
Kp_position = 100;

%========== Adaptive Fuzzy PI ============

%====== Xu ly nhieu dE ========
a_IIR = 0.05;

um = 1;

em = 50;
D_em = a_IIR*em;
%%D_em = y[k] = a_IIR*x[k] + (1-a_IIR)*y[k-1]
% Khi cap xung vuong: VD: 0 -> 40A thi
%  x[k]   = Delta_e_max = 40,
%  y[k-1] = 0 (Chua co gtri khoi tao)
% => D_em = a_IIR * em
%%=================================
kappa = 0.8;
epsilon = 0.01;

alpha = 20;
beta = 25;
