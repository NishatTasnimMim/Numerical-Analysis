clear all;
clc;

A = input ('The matrix of coefficients :');
B = input ('A column vector of constants :');
N = length(B);
X = zeros(N,1);
Aug = [A B];
for j = 1:N-1
    for z=2:N
        if Aug(j,j) ==0
            change = Aug(j,:);
            Aug(j,:)=Aug(z,:);
            Aug(z,:)=change;
        end
    end
    for i = j+1:N
        m = Aug(i,j)/Aug(j,j);
        Aug(i,:) = Aug(i,:) - m*Aug(j,:);
    end
end
Aug
X(N) = Aug(N,N+1)/Aug(N,N);
for k=N-1:-1:1
    X(k) = (Aug(k,N+1) - Aug(k, k+1:N)* X(k+1:N))/Aug(k,k);
end

for o=1:N
    fprintf('\nThe value of X%d = %.2f\n',o,X(o));
end