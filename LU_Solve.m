clc
clear all
A = [3 1 3;2 4 1;2 8 9];
b = [3;4;5];

[r,c] = size(A);
[L,U]=my_LU_f(A)
% c=my_rref1(L,b)
for k = 1:r
    temp=0;
    for j=1:k-1
        temp = temp + c(j)*L(k,j);
    end        
    c(k)=b(k)-temp;
end 
    
% x=my_rref1(U,c)

for k = r:-1:1
    temp = 0;
    for j = k+1:r
        temp = temp +x(j)*U(k,j);
    end
    x(k) = (c(k)- temp)/U(k,k);
end

x
