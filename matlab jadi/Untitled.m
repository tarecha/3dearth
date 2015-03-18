a = geotiffread('C:\maps\ASTGTM2_N03E098_dem.tif');

b = zeros(100, 100);
for i=1:ukuran_baris
    for j=1:ukuran_kolom
        b(i,j) = a(i+599,j+1405);
    end
end
mesh(b)