clc
clear all
A = [3 1 3;2 4 1;2 8 9]

[row,col] = size(A)

% % For pivot 1
% L(1,1) = 1 
% 
% L(2,1) = A(2,1)/A(1,1)
% A(2,:) = A(2,:) - L(2,1)*A(1,:)
% L(3,1) = A(3,1)/A(1,1)
% A(3,:) = A(3,:) - L(3,1)*A(1,:)
% 
% % For pivot 2
% L(2,2) = 1 
% 
% L(3,2) = A(3,2)/A(2,2)
% A(3,:) = A(3,:) - L(3,2)*A(2,:)
% 
% % For pivot 3
% L(3,3) = 1 

tol =1e-6;
for k =1:row
    if(abs(A(k,k))<tol)
        % Require row exchange
    end
    L(k,k)=1;
    for i = k+1:row
        L(i,k) = A(i,k)/A(k,k);
        A(i,:) = A(i,:) - L(i,k)*A(k,:);
    end
end
U=A;
L
U
    
