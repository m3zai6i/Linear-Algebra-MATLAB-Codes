function x = reduce_echelon_form_func(A,b)
[r,c]=size(A);
aug = [A b]
for i = 1:r
    aug(i,:)=aug(i,:)/aug(i,i);
    for j = 1:r
        if i~=j
            aug(j,:) = aug(j,:) - aug(j,i)*aug(i,:);
        end
    end
end
x = aug(:,c+1:end);

%To Run this Function
reduce_echelon_form_func()
