%function [view,waktu,luas,barisKoma,barisMatriks,kolomKoma,kolomMatriks,zmax,zmin,ztitik,infoMemory,jumlahPohon,errorlog] = visualisasiRadius(nama, latitude , longitude, radius, seleksi,interpolasi,pohon,deteksiAir)
clear all
clc
nama = 'Algoritma Deteksi Area Air Danau Segara Anak Gunung Rinjani';
latitude=-7.76504;
longitude=112.5897;

% latitude2=	-8.005824;
%longitude2=	113.0109;
radius = 50;
seleksi = 'RHD';
interpolasi = '0';
deteksiAir = '0';
pohon ='0';







format longG;
f = figure();
radiusBaris = radius;
radiusKolom = radius;
ukuran_baris = radiusBaris * 2 + 1;
ukuran_kolom = radiusKolom * 2 + 1;
luas = ((ukuran_baris-1)*30)*((ukuran_kolom-1)*30);

[barisKoma, kolomKoma] = mapping(latitude,longitude);
if strcmp(seleksi, 'RHD')%pemilihan algoritma
    tic;
    [barisMatriks, kolomMatriks] = seleksiRHD(barisKoma, kolomKoma);
    waktu = toc;
else
    tic;
    [barisMatriks, kolomMatriks] = seleksiBF(barisKoma, kolomKoma);
    waktu = toc;
end


[A, baris, kolom] =  pilih(barisMatriks, kolomMatriks, latitude, longitude);

ztitik=A(baris, kolom); %ketinggian pada titik tengah
d1 = baris - radiusBaris - 1;
d2 = kolom - radiusKolom - 1;


b = zeros(ukuran_baris, ukuran_kolom);
for i=1:ukuran_baris
    for j=1:ukuran_kolom
        b(i,j) = A(i+d1,j+d2);
    end
end

clear A; %variable A menyimpan matrik besar lalu di clear kan


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
    
else
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
zmin = min(min(b));
zmax = max(max(b));
if strcmp(deteksiAir, '1')
%     if (zmin<=0)
%         cm(1,:)= [1 1 1]; %laut
%     end;
    a = b;
    [m,n] = size(a);
    b1 = reshape(a,1,m*n);
    c = tabulate(b1);
    [~,d] = max(c(:,2));
    x=c(d,1);
    
    [bar,col]=find(a==x);
    tempA = zeros(m,n);
    dimensi = size(bar);
    for i=1:dimensi
        tempA(bar(i),col(i))=1;
    end;
    tempB = medfilt2(tempA,[5 5]); %filter noise
    [bar,col]=find(tempB==1);
    for i=1:size(bar);
       b(bar(i),col(i))=NaN; %kontur tanah dihilangkan
    end;
    
    tempC = double(edge(tempB,'canny')); %deteksi tepi
    [bar,col]=find(tempC==1);
    
    
    susunan = [bar col];
    m = size(susunan,1);
    barisAir = zeros(m,1);
    kolomAir = zeros(m,1);
    tinggiAir = zeros(m,1);
    tinggiAir(:) = x;
    
    barisAwal=0;
    kolomAwal=0;
    counter = 1;
    
    while ~isempty(susunan)   
        dmin = inf;
        [n,~] = size(susunan);
        for j=1:n
            d = ((susunan(j,1) - barisAwal)^2) + ((susunan(j,2)  - kolomAwal)^2);       
            if d < dmin
                dmin = d;            
                index = j;            
            end;               
        end;     
            barisAwal = susunan(index,1);
            kolomAwal = susunan(index,2); 
            susunan(index,:)=[];   
            barisAir(counter) =  barisAwal;
            kolomAir(counter) =  kolomAwal;
            counter = counter + 1; 
    end;
    hold on;
    fill3(kolomAir,barisAir,tinggiAir,[1 1 1]);
    luas = polyarea(barisAir,kolomAir);
%     [zcm,~] = seleksiRHD(mappingColorMap(zmin,zmax,x),0);
%     cm(zcm,:)= [1 1 1];
end;


scatter3(1, 1, b(1,1),100,'r','o','filled');
b(1,1) = NaN;

b(barisAir(1),kolomAir(1)) = NaN;
scatter3(kolomAir(1), barisAir(1), tinggiAir(1),100,'g','o','filled');

scatter3(kolomAir(size(kolomAir,1)), barisAir(size(kolomAir,1)), tinggiAir(1),100,'r','o','filled');
b(barisAir(size(kolomAir,1)),kolomAir(size(kolomAir,1))) = NaN;
b(barisTengah,kolomTengah) = NaN;
b(barisUtara,kolomUtara) = NaN;
scatter3(kolomTengah, barisTengah, ztitik,100,'k','o','filled');
hold on;
scatter3(kolomUtara, barisUtara, zutara,100,'m','o','filled');
hold on;
mesh(b);
axis off;
hold off;

cm = colormap('jet');
colormap(cm);
%permukaan laut 0, jika <=0 warna diganti putih



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
                    generatePohon(barisMatriksPohon,kolomMatriksPohon,tinggiPohon, interval, f);
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
                    generatePohonKelapa(barisMatriksPohon,kolomMatriksPohon,tinggiPohon, interval, f);
                    jumlahPohon = jumlahPohon + 1;
                end;
                
            end;
        end;
    end;
end;

% view = webfigure(f);
% close(f);
%informasi memory yang digunakan
[usr, sys] = memory;
memMATLAB= int16(usr.MemUsedMATLAB / 1000000); %konversi ke MB lalu diinteger kan untuk penyederhanaan nilai
memPhyAvailable = int16(sys.PhysicalMemory.Available / 1000000);
memPhyTotal = int16(sys.PhysicalMemory.Total / 1000000);
infoMemory  = strcat('Used : ',num2str(memMATLAB),' MB,  Available : ',num2str(memPhyAvailable),' MB, Total : ' ,num2str(memPhyTotal),' MB');
clearvars -except view waktu luas barisKoma barisMatriks kolomKoma kolomMatriks zmax zmin ztitik infoMemory jumlahPohon errorlog kolomAir barisAir tinggiAir;
%end
