function x = my_LUSolve_f(A,b)
[r,c] = size(A);
%%  LU factorization
[L,U]=my_LU_f(A);

%% Solve Lc = b
for k = 1:r
    temp=0;
    for j=1:k-1
        temp = temp + c(j)*L(k,j);
    end        
    c(k)=b(k)-temp;
end 
    
%% Solve Ux = c
for k = r:-1:1
    temp = 0;
    for j = k+1:r
        temp = temp +x(j)*U(k,j);
    end
    x(k) = (c(k)- temp)/U(k,k);
end
