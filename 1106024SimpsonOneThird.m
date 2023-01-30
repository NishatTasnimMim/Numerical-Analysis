clear all;
clc;

a = input ('Lower limit of integration :');
b = input ('Upper limit of integration :');
f = input ('The function : ');
n = input ('Total number of divisions n : ');
h = (b-a)/n;
sum = f(a)+f(b);
for i = 1:2:n-1
    sum = sum + 4*f(a+i*h);
end
for i = 2:2:n-2
    sum = sum + 2*f(a+i*h);
end
Simpson = h/3 * sum;

fprintf("\nIntegrated value : %.3f\n",Simpson);
