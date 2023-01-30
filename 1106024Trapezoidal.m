clear all;
clc;

a = input ('Lower limit of integration :');
b = input ('Upper limit of integration :');
f = input ('The function : ');
n = input ('Total number of divisions n : ');
h = (b-a)/n;
sum = 0.5*(f(a)+f(b));
for i=1:n-1
    sum = sum + f(a + i*h);
end

Trapezoid = h*sum;
fprintf("\nIntegrated value : %.3f\n",Trapezoid);