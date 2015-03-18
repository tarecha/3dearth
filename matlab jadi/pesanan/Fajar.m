nama = 'Gunung Panderman';
latitude=27.78;
longitude=86.77;


interpolasi='0';  
%{
    keterangan interpolasi 
    0 = interval 30 m
    1 = interval 15 m
    2 = interval 7.5 m
    3 = interval 3.75 m
%}
pohon='1';
format longG;
batasRadius = 20;
A = geotiffread('C:\maps\ASTGTM2_N27E086_dem.tif');
tinggimax = max(max(A))
batasTepi = 'C:\maps\batasTepi22.csv';
if exist (batasTepi, 'file')
    databatasTepi=importdata(batasTepi,',');
    if not(isempty(databatasTepi))            
        latitude1 = databatasTepi(1,1);
        longitude1 = databatasTepi(1,2);
        latitude2= databatasTepi(2,1);
        longitude2= databatasTepi(2,2);
    end;
end;
f = figure();
%[tengahLatitude,tengahLongitude,rLatitude,rLongitude,statusPotong] = normalisasi(latitude1 , longitude1, latitude2, longitude2, batasRadius);
radiusBaris = batasRadius;
radiusKolom = batasRadius;
%latitude = tengahLatitude;
%longitude = tengahLongitude;
ukuran_baris = radiusBaris * 2 + 1;
ukuran_kolom = radiusKolom * 2 + 1;
luas = ((ukuran_baris-1)*30)*((ukuran_kolom-1)*30);

[barisKoma, kolomKoma] = mapping(latitude,longitude);

[barisMatriks, kolomMatriks] = seleksiRHD(barisKoma, kolomKoma);
barisMatriks = 39;
kolomMatriks = 3333;
%fungsi pilih untuk memilih 4 ubin terdekat.
%jika menggunakan fungsi pilih() tempatkan file aster pada c:\maps\
%[A, baris, kolom] =  pilih(barisMatriks, kolomMatriks, latitude, longitude);
kolom = kolomMatriks;
baris = barisMatriks;
ztitik=A(baris, kolom); %ketinggian pada titik tengah
d1 = baris - radiusBaris - 1;
d2 = kolom - radiusKolom - 1;
b = zeros(ukuran_baris, ukuran_kolom);
for i=1:ukuran_baris
    for j=1:ukuran_kolom
        b(i,j) = A(i+d1,j+d2);
    end
end

%clear A; %variable A menyimpan matrik besar lalu di clear kan


b = flipud(b);



zutara = b((radiusBaris*2+1),(radiusKolom+1));
if strcmp(interpolasi, '1')%pemilihan interpolasi
    interval = 15;
    kolomUtara = (radiusKolom+1)*2-1;
    barisUtara = (radiusBaris*2+1)*2-1;
    kolomTengah = (radiusKolom+1)*2-1;
    barisTengah = (radiusBaris+1)*2-1;
    ukuran_kolom = ukuran_kolom *2-1;
    ukuran_baris = ukuran_baris *2-1;
    b = interpolasiLinier(b);
elseif strcmp(interpolasi, '2')%pemilihan interpolasi
    interval = 7.5;
    kolomUtara = ((radiusKolom+1)*2-1)*2-1;
    barisUtara = ((radiusBaris*2+1)*2-1)*2-1;
    kolomTengah = ((radiusKolom+1)*2-1)*2-1;
    barisTengah = ((radiusBaris+1)*2-1)*2-1;
    ukuran_kolom = (ukuran_kolom *2-1)*2-1;
    ukuran_baris = (ukuran_baris *2-1)*2-1;
    b = interpolasiLinier(b);
    b = interpolasiLinier(b);
elseif strcmp(interpolasi, '3')%pemilihan interpolasi
    interval = 3.75;
    kolomUtara = (((radiusKolom+1)*2-1)*2-1)*2-1;
    barisUtara = (((radiusBaris*2+1)*2-1)*2-1)*2-1;
    kolomTengah = (((radiusKolom+1)*2-1)*2-1)*2-1;
    barisTengah = (((radiusBaris+1)*2-1)*2-1)*2-1;
    ukuran_kolom = ((ukuran_kolom *2-1)*2-1)*2-1;
    ukuran_baris = ((ukuran_baris *2-1)*2-1)*2-1;
    b = interpolasiLinier(b);
    b = interpolasiLinier(b);   
    b = interpolasiLinier(b);  
else %interpolasi = 0
    interval = 30;
    kolomUtara = radiusKolom+1;
    barisUtara = radiusBaris*2+1;
    kolomTengah = radiusKolom+1;
    barisTengah = radiusBaris+1;
    
end;
errorlog='';

try
   opengl hardware;
   set(0,'DefaultFigureRenderer','opengl');
   set(gcf, 'renderer', 'opengl');
catch excep
     errorlog = excep.message;
end




scatter3(kolomTengah, barisTengah, ztitik+10,100,'k','o','filled');
hold on;
scatter3(kolomUtara, barisUtara, zutara+10,100,'m','o','filled');
hold on;
mesh(b);
axis off;
hold off;
zmin = min(min(b));
zmax = max(max(b));
cm = colormap('jet');
%permukaan laut 0, jika <=0 warna diganti putih
if (zmin<=0)
    cm(1,:)= [1 1 1];
end;
colormap(cm);

%nilai permukaan laut 0
if ((zmax-zmin)>0)
    if(ukuran_baris >= ukuran_kolom)
        ukuran_tinggi = ukuran_baris;
    else
        ukuran_tinggi = ukuran_kolom;
    end;
    
    axis([1 ukuran_tinggi 1 ukuran_tinggi 0 ((ukuran_tinggi-1)*interval)-1]);
    axis vis3d;
    axis([1 ukuran_kolom 1 ukuran_baris zmin zmax]);
end;
title(nama, 'FontSize',13);

jumlahPohon = 0;
%membuat pohon===============================================================================================================
%fitur tambahan untuk memperjelas manfaat interpolasi
if strcmp(pohon, '1')
    [latC,longC]=mappingMatrixtoNearestCoordinat(barisMatriks, kolomMatriks, latitude,longitude);
    [latKecilMin,latKecilMax,longKecilMin,longKecilMax] = batasMatrixKecil(latC, longC, radiusBaris, radiusKolom,interval);
    
    
    filePohonBeringin = 'C:\maps\pohonBeringin.csv';
    if exist (filePohonBeringin, 'file')
        dataPohonBeringin=importdata(filePohonBeringin,',');
        if not(isempty(dataPohonBeringin))
            jum_pohon = size(dataPohonBeringin);
            for i=1:jum_pohon
                latitudePohon = dataPohonBeringin(i,1);
                longitudePohon = dataPohonBeringin(i,2);
                %seleksi apakah letak pohon masih dalam area visualisasi
                if latitudePohon >= latKecilMin && latitudePohon <= latKecilMax && longitudePohon >= longKecilMin && longitudePohon <= longKecilMax
                    [barisKomaPohon,kolomKomaPohon] = mappingObjek(latitudePohon, longitudePohon, latKecilMin,latKecilMax,longKecilMin,longKecilMax,ukuran_baris,ukuran_kolom);
                    [barisMatriksPohon, kolomMatriksPohon] = seleksiRHD(barisKomaPohon, kolomKomaPohon);
                    tinggiPohon = b(barisMatriksPohon,kolomMatriksPohon);
                    %PohonPinus(barisMatriksPohon,kolomMatriksPohon,tinggiPohon, interval, f);
                    jumlahPohon = jumlahPohon + 1;
                end;
                
            end;
        end;
    end;
    
    filePohonKelapa = 'C:\maps\pohonKelapa.csv';
    if exist (filePohonKelapa, 'file')
        dataPohonKelapa=importdata(filePohonKelapa,',');
        if not(isempty(dataPohonKelapa))
            jum_pohon = size(dataPohonKelapa);
            for i=1:jum_pohon
                latitudePohon = dataPohonKelapa(i,1);
                longitudePohon = dataPohonKelapa(i,2);
                %seleksi apakah letak pohon masih dalam area visualisasi
                if latitudePohon >= latKecilMin && latitudePohon <= latKecilMax && longitudePohon >= longKecilMin && longitudePohon <= longKecilMax
                    [barisKomaPohon,kolomKomaPohon] = mappingObjek(latitudePohon, longitudePohon, latKecilMin,latKecilMax,longKecilMin,longKecilMax,ukuran_baris,ukuran_kolom);
                    [barisMatriksPohon, kolomMatriksPohon] = seleksiRHD(barisKomaPohon, kolomKomaPohon);
                    tinggiPohon = b(barisMatriksPohon,kolomMatriksPohon);
                    PohonTerbakar(barisMatriksPohon,kolomMatriksPohon,tinggiPohon, interval, f);
                    jumlahPohon = jumlahPohon + 1;
                end;
                
            end;
        end;
    end;
end;

clear b;
clear dataPohonBeringin;
clear dataPohonKelapa;

%informasi memory yang digunakan
[usr, sys] = memory;
memMATLAB= int16(usr.MemUsedMATLAB / 1000000); %konversi ke MB lalu diinteger kan untuk penyederhanaan nilai
memPhyAvailable = int16(sys.PhysicalMemory.Available / 1000000);
memPhyTotal = int16(sys.PhysicalMemory.Total / 1000000);
infoMemory  = strcat('Used : ',num2str(memMATLAB),' MB,  Available : ',num2str(memPhyAvailable),' MB, Total : ' ,num2str(memPhyTotal),' MB');


