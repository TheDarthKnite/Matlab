a = linspace(-2,2,10)
b = linspace(2i,-2i,10)
for i=1:10
    for j=1:10
        c(i,j)=a(j)+b(i)
    end
end
