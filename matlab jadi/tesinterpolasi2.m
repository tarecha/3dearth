clc;
clear;
format longG;
nama = 'Gunung Semeru';
latitude=-8.438431;
longitude=	112.6903;

radiusBaris = 1800;
radiusKolom = 1800;
seleksi = 'BF';
interpolasi = '0';
ukuran_baris = radiusBaris * 2 + 1;
ukuran_kolom = radiusKolom * 2 + 1;
luas = ((ukuran_baris-1)*30)*((ukuran_kolom-1)*30);
pohon = '1';

[barisKoma,kolomKoma] = mapping(latitude, longitude)
if strcmp(seleksi, 'RHD')%pemilihan algoritma
    tic;
        [barisMatriks, kolomMatriks] = seleksiRHD(barisKoma, kolomKoma);
    waktu = toc
else 
    tic;
        [barisMatriks, kolomMatriks] = seleksiBF(barisKoma, kolomKoma);
    waktu = toc
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


%clear B;
b = flipud(b);

zmin = min(min(b))
zmax = max(max(b))
	cm = colormap('jet'); 
      %opengl hardware;
  % set(0,'DefaultFigureRenderer','opengl');
  % set(gcf, 'renderer', 'opengl'); 
	%permukaan laut 0, jika <=0 warna diganti putih
%	if (zmin<=0) 
		cm(1,:)= [1 1 1];
        cm(2,:)= [1 1 1];
        cm(3,:)= [1 1 1];
        cm(4,:)= [1 1 1];
        cm(5,:)= [1 1 1];
        cm(6,:)= [1 1 1];
        cm(7,:)= [1 1 1];
        cm(8,:)= [1 1 1];
        cm(9,:)= [1 1 1];
        cm(10,:)= [1 1 1];
        cm(11,:)= [1 1 1];
        cm(12,:)= [1 1 1];
        cm(13,:)= [1 1 1];
        cm(14,:)= [1 1 1];
        cm(15,:)= [1 1 1];
        cm(16,:)= [1 1 1];
        cm(17,:)= [1 1 1];
        cm(18,:)= [1 1 1];
        cm(19,:)= [1 1 1];
        cm(20,:)= [1 1 1];
%	end;
  
 %   colormap
    %opengl hardware;
  % set(0,'DefaultFigureRenderer','opengl');
  % set(gcf, 'renderer', 'opengl'); 
zutara = b((radiusBaris*2+1),(radiusKolom+1));
if strcmp(interpolasi, '1')%pemilihan interpolasi
    interval = 15;
    kolomUtara = (radiusKolom+1)*2-1;
    barisUtara = (radiusBaris*2+1)*2-1;
    kolomTengah = (radiusKolom+1)*2-1;
    barisTengah = (radiusBaris+1)*2-1;
    ukuran_kolom = ukuran_kolom *2-1;
    ukuran_baris = ukuran_baris *2-1;
    
    b = interpolasiLinear(b);
    whos b
else
    interval = 30;
    kolomUtara = radiusKolom+1;
    barisUtara = radiusBaris*2+1;
    kolomTengah = radiusKolom+1;
    barisTengah = radiusBaris+1;
   
end;  
f = figure();
scatter3(kolomTengah, barisTengah, ztitik,100,'k','o','filled');
hold on;
scatter3(kolomUtara, barisUtara, zutara,100,'m','o','filled');
hold on;
mesh(b); 
whos b
colormap('cool');
whos b
axis off;
hold off;
 colormap(cm)


       %nilai permukaan laut 0
       if ((zmax-zmin)>0)
            if(ukuran_baris >= ukuran_kolom)
                ukuran_tinggi = ukuran_baris;
            else
                ukuran_tinggi = ukuran_kolom;
            end;
            
            axis([1 ukuran_tinggi 1 ukuran_tinggi 0 (ukuran_tinggi-1)*interval]);
            axis vis3d;
            axis([1 ukuran_kolom 1 ukuran_baris zmin zmax]);
       end;
		title(nama, 'FontSize',13);
        
        %informasi memory yang digunakan 
        [usr, sys] = memory;
        memMATLAB= int16(usr.MemUsedMATLAB / 1000000); %konversi ke MB lalu diinteger kan untuk penyederhanaan nilai
        memPhyAvailable = int16(sys.PhysicalMemory.Available / 1000000);
        memPhyTotal = int16(sys.PhysicalMemory.Total / 1000000);
        infoMemory  = strcat('Used : ',num2str(memMATLAB),' MB,  Available : ',num2str(memPhyAvailable),' MB, Total : ' ,num2str(memPhyTotal),' MB');
      
        [latC,longC]=mappingMatrixtoCloestCoordinat(barisMatriks, kolomMatriks, latitude,longitude);
       
        [latKecilMin,latKecilMax,longKecilMin,longKecilMax] = batasMatrixKecil(latC, longC, radiusBaris, radiusKolom,interval);
     jumlahPohon = 0;
   
   filePohonBeringin = 'C:\maps\pohonBeringin.txt'; 
       if exist (filePohonBeringin, 'file') && strcmp(pohon, '1')
            
            dataPohonBeringin=importdata(filePohonBeringin,';');
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
       
       filePohonKelapa = 'C:\maps\pohonKelapa.txt'; 
       if exist (filePohonKelapa, 'file') && strcmp(pohon, '1')
            
            dataPohonKelapa=importdata(filePohonKelapa,';');
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
waktu;


clear b;