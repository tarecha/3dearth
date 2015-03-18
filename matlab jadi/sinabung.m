a = geotiffread('C:\maps\ASTGTM2_N03E098_dem.tif');

b = zeros(100, 100);
for i=1:100
    for j=1:100
        b(i,j) = a(i+599-50,j+1405-50);
    end
end
mesh(b)