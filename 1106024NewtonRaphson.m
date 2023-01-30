clc 

syms x;
fun = input('Enter the function : ');
f = inline (fun);
d = diff(f(x));
df = inline(d);
x0= input('\nenter the value of x0: ');

if df(x0)~=0
    for i=1:100
        x1=x0 - (f(x0)/df(x0));
        fprintf('iteration%d, x%d= %f\n',i,i,x1)
        if abs(x1-x0) < 1.0E-4
            break;
        end
        
        if df(x1)==0
            disp('\nNewton raphson will not apply\n')
        end
        x0=x1;
    end 
else
    disp('\nNewton raphson will not apply\n');
end

fprintf('\nThe root: %.4f\nThe total number of iterations: %d\n\n',x1,i)