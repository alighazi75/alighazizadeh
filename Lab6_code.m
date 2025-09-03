clear;
clc; 
close all

shiftplot = 22e-6; %This value shifts the measured plot to the right (positive) and to the left (negative)
% This part reads the CSV file that you have collected 
p1 = readmatrix("lab4_data1.csv");
col1 = p1(:, 1) + shiftplot;
col2 = p1(:, 2);

% This part is the theoritical estimation 

R =                  % Define the value of R
C =           % Define the value of C
Freq =         % Define the frequency in here in Hz 
T = 1/Freq;           % Period of the signal
Tau = R*C;  

% Charge function Do not change the syntax -- keep @(x) and write your
% equation as a function of x (change t to x)

p1_charge = @(x) 
% Charge function Do not change the syntax -- keep @(x) and write your
% equation as a function of x (change t to x)
p1_discharge = @(x) 

figure(1)
plot(col1, col2,'b','LineWidth',1.5)
hold on
fplot(p1_charge, [0 T/2],'r','LineWidth',2.5)
fplot(p1_discharge, [T/2 T],'r','LineWidth',2.5)
hold off
legend("Measured Value","Theoritical Value")

grid on
xlim([-0.0005 0.001])