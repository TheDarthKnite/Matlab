%This Function Creates a n by 3 matrix with the colours from the starting
%colour to the final colours
%Input:Starting Colour
%Output:Ending Colour
%Author:Samuel North
function [ColourMap] = CreateColourmap(StartingColour,EndColour,n)
%ROC:Rate of Change Calculates by how much the array should change with
%each step
        ROC(1)=(EndColour(1)-StartingColour(1))/(n-1)
        ROC(2)=(EndColour(2)-StartingColour(2))/(n-1)
        ROC(3)=(EndColour(3)-StartingColour(3))/(n-1)
    %Starting point
    ColourMap(1,1:3)=StartingColour   
    %this adds the ROC for each time that the matrix must expand.
    %Uses n-1 because we have our initial value so must do it 1 less time
    for i=1:(n-1)
        for j=1:3
        ColourMap(i+1,j)=ROC(j)*i+StartingColour(1,j)
        end
    end
end

