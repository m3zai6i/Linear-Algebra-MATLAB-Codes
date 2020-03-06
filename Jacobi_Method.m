
clc
clear 
close all

A = [2 -1; -1 2];
b = [4; -2];

%% Jacobi Method
S = [2 0; 0 2];
T = S-A;
x = [0;0];

for k = 1:10
    
    x(1:2,k+1) = my_LUSolve_f(S,T*x(1:2,k)+b);
    r(1:2,k) = x(1:2,k+1)-x(1:2,k);
    e(k) = max(abs(r(1:2,k)));
    
end
x
e
%% Gauss Seidel Method
S = [2 0; -1 2];
T = S-A;
x = [0;-1];

for k = 1:10
    
    x(1:2,k+1) = my_LUSolve_f(S,T*x(1:2,k)+b);
    r(1:2,k) = x(1:2,k+1)-x(1:2,k);
    e1(k) = max(abs(r(1:2,k)));
    
end
x
e1
%% Error Plots
k = 1:10;
plot(k,e,'b',k,e1,'r')
title('Error Plots')
xlabel('k')
ylabel('e(k)')
legend('Jacobi','Gauss-Seidel')
