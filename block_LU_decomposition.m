
% Generic Function for (MxM) Matix and (NxN) Block Size
function [L,U] = my_Block_LU_f(A,block_size)

% A = Block Matrix
% block_size is the size of block in block matrix

[row,col] = size(A);
b = block_size;
s = b-1;
for c =1:b:col

    L(c:c+s,c:c+s) = eye(b);

    for r = c+b:b:row
        L(r:r+s,c:c+s) = A(r:r+s,c:c+s)/A(c:c+s,c:c+s);
        A(r:r+s,:) = A(r:r+s,:) - L(r:r+s,c:c+s)*A(c:c+s,:);

    end
    
end 

U=A;
end
