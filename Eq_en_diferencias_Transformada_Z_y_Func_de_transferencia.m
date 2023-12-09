clear all
clc

c=100
nn=1:1:c;
x=zeros(1,c);
x(1)=1;
stem(x)

yy=[0.5 0.05];
for n = 3:length(nn)
    
  y=0.5*x(n) + 0.1*x(n-1)-0.1*yy(n-1)+0.2*yy(n-2);
%    y=x(n)-0.5*x(n-1) + 0.25*x(n-2)
    yy=[yy y];
end
stem((0:1:c-1),yy)
title(['y(n)=0.5*x(n) + 0.1*x(n-1)-0.1*yy(n-1)+0.2*yy(n-2) y x(n)=u(n)'])
grid on

