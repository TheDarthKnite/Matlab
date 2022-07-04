%Calculates the amount of iterations required 
%Input: Z and C value and cutoff point
%Output: Iterations required(0 if iterations required is larger than cutoff
%point)
%author: Samuel North
function [Iterations] =  IterateComplexQuadratic(Z,C,Cutoff)
%set iterations to 0
Iterations=0;
%solve amount of iterations
while abs(Z)<3&Iterations<=Cutoff
        Iterations=Iterations+1;
        Z=Z.^2+C;
end
%if there are more iterations required than cutoff than sets iterations to
%0
if Iterations>Cutoff
    Iterations=0;
end