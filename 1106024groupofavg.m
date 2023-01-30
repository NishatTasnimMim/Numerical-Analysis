clear all;
clc;


x = input ('Enter the array of numbers for X : ');
y = input ('Enter the array of numbers for Y : ');
eq = input ('Enter the linear equation format : ');

lenX = length(x);
halfLenX1 = ceil(lenX/2);
halfLenX2 = lenX-halfLenX1;
sumx1=0;
sumx2=0;
for i= 1 : halfLenX1
    sumx1= sumx1+x(i);
end
avg = sumx1/halfLenX1;
x1=avg;

for i=halfLenX1+1 : lenX
    sumx2 = sumx2+x(i);
end
avg = sumx2/halfLenX2;
x2 = avg;

lenY = length(y);
halfLenY1 = ceil(lenY/2);
halfLenY2 = lenY - halfLenY1;
sumy1 = 0;
sumy2 = 0;
for i=1 : halfLenY1
    sumy1 = sumy1+y(i);
end
avg = sumy1/halfLenY1;
y1 = avg;

for i=halfLenY1+1 : lenY
    sumy2 = sumy2+y(i);
end
avg = sumy2/halfLenY2;
y2 = avg;


if (eq == 'ax+b' )
    a = (y2-y1)/(x2-x1);
    b = y1 - (a*x1);
    fprintf('\nThe required line is  y=%.3fx+%.3f\n',a,b);
else 
    b = (y2-y1)/(x2-x1);
    a = y1 - (b*x1);
    fprintf('\nThe required line is  y=%.3f+%.3fx\n',a,b);
end
    
    
