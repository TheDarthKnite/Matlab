%This function creates the matrix with the required RGB Colours
%Input:2D array+colour mapping
%output:RGB 3D array
%Author:Samuel North
function [RGB] = ColourJulia(PointNature,ColourMap)
% finds the necesary size of matrix to accomodate
A=size(PointNature)
%solves the colour for each point and puts in 0 if 0
for i = 1:A(1)
    for j = 1:A(2)
        B=PointNature(i,j);
        if B>0
        RGB(i,j,1)=uint8(ColourMap(abs(B),1)*255);
        RGB(i,j,2)=uint8(ColourMap(abs(B),2)*255);
        RGB(i,j,3)=uint8(ColourMap(abs(B),3)*255);
        else
        RGB(i,j,1)=uint8(0);
        RGB(i,j,2)=uint8(0);
        RGB(i,j,3)=uint8(0);
        end
    end        
end

