%This Function takes a sequence of complex values, and generates the Julia
%set images
%input: The Complex values, size of the grid, and the colour map
%output: The arrays of images
function [ImageArray] = GenerateJuliaSets(ComplexValues,n,ColourMap);
%Creates complex grid of size n
ComplexGrid=CreateComplexGrid(n);

%this decides the cutoff size
Cutoff=size(ColourMap);
Cutoff=Cutoff(1);

%This determines the length of the complex values
Size=size(ComplexValues)
length=Size(2)

%Generates array for each value in complex values
for i=1:length
    juliaSetPoints=JuliaSetPoints(ComplexGrid,ComplexValues(i),Cutoff);
    ImageArray{i}=ColourJulia(juliaSetPoints,ColourMap);
end
end