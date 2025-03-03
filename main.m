clc, clear
x0=1;
x1=0;
f=@(x)3*x+sin(x)-exp(x);
disp('    iter     x0       x1       x2      f(x0)      f(x1)     f(x2)');

disp('---------------------------------------------------------------------');

if abs(f(x0))<abs(f(x1))
   temp=x0;
   x0=x1;
   x1=temp;
end


 
for iter=1:5

   x2=x1-(f(x1)*(x0-x1)/(f(x0)-f(x1)));
   disp([iter x0 x1 x2 f(x0) f(x1) f(x2)]);

    x0=x1;
    x1=x2;
end