clear
%number of values in the array
N=8;
% values on the array I've only designed it for max 7 values x_3 is the
% value at x[-3]
x_3=0;
x_2=0;
x_1=0;
x0=-1;
x1=-2;
x2=2;
x3=1;
for k = 0:N-1
    x(k+1)=x_3*exp(-3*-i*2*pi*k/N)+x_2*exp(-2*-i*2*pi*k/N)+x_1*exp(-1*-i*2*pi*k/N)+x0+x1*exp(1*-i*2*pi*k/N)+x2*exp(2*-i*2*pi*k/N)+x3*exp(3*-i*2*pi*k/N)
end


