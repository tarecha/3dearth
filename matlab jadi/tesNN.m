
clear all;
clc;

                %Pemotong titik terdekat
%================================================
%Semeru
latitude=-8.107833;
longitude=112.922306;

radiusBaris = 10;
radiusKolom = 10;
seleksi = 'RHD';
nama = 'Gunung Semeru';
format longG;

ukuran_baris = radiusBaris * 2 + 1;
ukuran_kolom = radiusKolom * 2 + 1;
luas = ((ukuran_baris-1)*30)*((ukuran_kolom-1)*30);

[barisKoma, kolomKoma] = mapping(latitude,longitude)

if strcmp(seleksi, 'RHD')%pemilihan algoritma
    tic;
        [barisMatriks, kolomMatriks] = seleksiRHD(barisKoma, kolomKoma);
    waktu = toc;
else
    tic;
        [barisMatriks, kolomMatriks] = seleksiBF(barisKoma, kolomKoma);
    waktu = toc;
end;


[A, baris, kolom] =  pilih(barisMatriks, kolomMatriks, latitude, longitude);

ztitik=A(baris, kolom); %ketinggian pada titik tengah 
d1 = baris - radiusBaris - 1;
d2 = kolom - radiusKolom - 1;

	
B = zeros(ukuran_baris, ukuran_kolom);
for i=1:ukuran_baris
   for j=1:ukuran_kolom
        B(i,j) = A(i+d1,j+d2);
   end
end

clear A; %variable A menyimpan matrik besar lalu di clear kan
b=double(B);
clear B;
hh = b;
b = flipud(b);
zmin = min(min(b));
zmax = max(max(b));
	cm = colormap('jet'); 
	%permukaan laut 0, jika <=0 warna diganti putih
	if (zmin<=0) 
		cm(1,:)= [1 1 1];
	end;
    colormap(cm);
f = figure();
zutara = b((radiusBaris*2+1),(radiusKolom+1));
scatter3((radiusKolom+1), (radiusBaris+1), ztitik,100,'k','o','filled');
hold on;
scatter3((radiusKolom+1), (radiusBaris*2+1), zutara,100,'m','o','filled');
hold on;
mesh(b); 
axis off;
hold on;
%clear b;

       %nilai permukaan laut 0
       if ((zmax-zmin)>0)
            if(ukuran_baris >= ukuran_kolom)
                ukuran_tinggi = ukuran_baris;
            else
                ukuran_tinggi = ukuran_kolom;
            end;
            
            axis([1 ukuran_tinggi 1 ukuran_tinggi 0 (ukuran_tinggi-1)*30]);
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
    
        [latC,longC]=mappingMatrixtoCloestCoordinat(barisMatriks, kolomMatriks, latitude,longitude)
        latitude,longitude
        [latKecilMin,latKecilMax,longKecilMin,longKecilMax] = batasMatrixKecil(latC, longC, radiusBaris, radiusKolom,30)
       
  %{ 
        
        pohonBeringin = [  
            -8.109  112.922306; ... %belakang rumah
            -8.1099  112.92235;
            -7.991877   112.681446; ...
            -7.991832   112.681460; ...
            -7.991916   112.681379; ...
            -7.992316   112.681702; ...
            -7.992433   112.681398; ...
            -7.992587   112.681430; ...
            -7.992271   112.682170; ...
            -7.992215   112.682343; ...
            -7.992245   112.682383; ...
            -7.992226   112.682442; ...
            -7.992242   112.682600; ...
            -7.992457   112.682613;
        ]; 
        jum_pohon = size(pohonBeringin);
for i=1:jum_pohon
    latitudePohon = pohonBeringin(i,1);
    longitudePohon = pohonBeringin(i,2);
    %seleksi apakah letak pohon masih dalam area visualisasi
    if latitudePohon >= latKecilMin && latitudePohon <= latKecilMax && longitudePohon >= longKecilMin && longitudePohon <= longKecilMax
         input_lat = pohonBeringin(i,1);
        input_lon = pohonBeringin(i,2);
        [barisKomaPohon,kolomKomaPohon] = mappingObjek(input_lat, input_lon, latKecilMin,latKecilMax,longKecilMin,longKecilMax,ukuran_baris,ukuran_kolom)
        [barisMatriksPohon, kolomMatriksPohon] = seleksiRHD(barisKomaPohon, kolomKomaPohon)
        c = b(barisMatriksPohon,kolomMatriksPohon)
        generatePohon(barisMatriksPohon,kolomMatriksPohon,c , 15, f);
    end;
        
end

  %}
        pohonKelapa = [  
              -8.109  112.922306; ... %belakang rumah
            -8.1099  112.92235;
            ];
   jum_pohon_kelapa = size(pohonKelapa);
for i=1:jum_pohon_kelapa
    latitudePohon = pohonKelapa(i,1);
    longitudePohon = pohonKelapa(i,2);
    %seleksi apakah letak pohon masih dalam area visualisasi
    if latitudePohon >= latKecilMin && latitudePohon <= latKecilMax && longitudePohon >= longKecilMin && longitudePohon <= longKecilMax
         input_lat = pohonKelapa(i,1);
        input_lon = pohonKelapa(i,2);
        [barisKomaPohon,kolomKomaPohon] = mappingObjek(input_lat, input_lon, latKecilMin,latKecilMax,longKecilMin,longKecilMax,ukuran_baris,ukuran_kolom)
        [barisMatriksPohon, kolomMatriksPohon] = seleksiRHD(barisKomaPohon, kolomKomaPohon)
        c = b(barisMatriksPohon,kolomMatriksPohon)
        generatePohonKelapa(barisMatriksPohon,kolomMatriksPohon,c , 15, f);
    end;
        
end

    







        