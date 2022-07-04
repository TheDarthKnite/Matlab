%Calculates how many iterations are required on a matrix
%Inputs:The complex values, constants, and cutoff point.
%Ouput: all the required iterations for a matrix
%Author: Samuel North
function [PointNature] =  JuliaSetPoints(ComplexValues,C,Cutoff)
Size=size(ComplexValues);
for a=1:Size(1)
    for b=1:Size(2)
        PointNature(a,b)=IterateComplexQuadratic(ComplexValues(a,b),C,Cutoff);
    end
end


