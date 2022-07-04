%This Function provides names and values for each colour
%Input:Name of the File
%Output: Colour names and RGB values
%Author: Samuel North
function [ColourName,ColourValues] = ReadColourValues(FileName)
%Creates the matrices associated with Basic colours
if strcmp(FileName,'BasicColours.txt')
    ColourName = {'red';'green';'blue';'yellow';'magenta';'cyan'};
    ColourValues = [1,0,0;0,1,0;0,0,1;1,1,0;1,0,1;0,1,1];
    %Creates the matrices associated with royal colours
elseif strcmp(FileName,'RoyalColours.txt')
    ColourName = {'navy';'purple';'silver';'gold';};
    ColourValues = [0,0,0.5;0.5,0,0.5;0.753,0.753,0.753;1,0.843,0];
    %Creates the matrices associated with monochrome
elseif strcmp(FileName,'Monochrome.txt')
    ColourName = {'black','white'};
    ColourValues = {0,0,0;1,1,1};
    %produces error message
else
    ErrMsg=sprintf('Error opening file %s \n',FileName);
    fprintf(2,ErrMsg)
end

