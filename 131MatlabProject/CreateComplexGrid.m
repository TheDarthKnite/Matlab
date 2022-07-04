%This function creates a matrix of a specified size
%Input: size of Matrix
%Output: Matrix with values from -2i to 2i added to values ranging from -2
%to 2
%Author:Samuel North
function [M] =  CreateComplexGrid(N)
%Creates set of values from -2 and 2
x=linspace(-2,2,N);
%Creates set of values from -2i and 2i
y=linspace(2i,-2i,N);
%values of position in matrix
a=1;
b=1;
M=zeros(N,N);
%combines the matrices for every point
for i = 1:N
    a=1;
    while a<N
        M(b,a)=x(1,a)+y(1,b);
        a=a+1;
    end
    M(b,a)=x(1,a)+y(1,b);
    b=b+1;
end

