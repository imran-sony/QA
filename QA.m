close all;
clear all;
clc;
%% Display function
[X,Y] = meshgrid(-50:1:50,-50:1:50);
Z = (X-2).^2 + 2*(Y-3).^2;
surf(X,Y,Z);
hold on;
% Axis labels
meshc(X,Y,Z);
shading flat
xlabel ('X');
ylabel ('Y');
zlabel ('Z');
title ('f(x,y)=(x-2)² + 2(y-3)²');
%% Parameters     
X=[50;50];  % Starting point
alpha=0.01; % Step size multiplier
%% Gradient descent
for i=1:200    
    plot (X(1),X(2),'r.');
    X= X - alpha * [2*X(1)-4 ; 4*X(2)-12];
end


