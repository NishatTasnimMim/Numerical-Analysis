clc 

f = @(x) x^3-x-11;
x1 = input ('\nEnter the lower limit x1 : ');
x2 = input ('Enter the upper limit x2 : ');
if f(x1)*f(x2) > 0
    fprintf('No roots exist within the given interval');
    return
end

if f(x1) == 0
    fprintf('x1 is one of the roots')
    return
elseif f(x2) == 0
    fprintf('x2 is one of the roots')
    return
end

for i = 1: 100
    xh = ((x1*f(x2))-(x2*f(x1)))/(f(x2)-f(x1));
    fprintf('iteration%d, x%d= %f\n',i,i,xh)
    if f(x1)*f(xh)<0
        x2=xh;
    else 
        x1 = xh;
    end
    if abs(f(x1)) < 1.0E-4
        break
    end
end
fprintf('\nThe root: %.4f\nThe total number of iterations: %d\n\n',x1,i)
 