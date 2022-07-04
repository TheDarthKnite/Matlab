%This Function creates the RGB values of the colour we want
%Inputs: colour name, collection of colour's names, and those colour's RGB
%values
%Output: RGB value of colour
%Author: Samuel North
function [ColourValue] = LookupColourValues(String,ColourNames,ColourValues)
%Find size and number of rows in Colour names to see how many times i have
%to run my code
SIZE=size(ColourNames);
height=SIZE(1);
%compares string to each element in ColourNames, and saves value with the
%same number
for i=1:height
    if strcmp(lower(String),lower(ColourNames(i)));
        Position=i;
    else
    end   
end
%using the position generates the RGB value
ColourValue=ColourValues(Position,1:3);
end

