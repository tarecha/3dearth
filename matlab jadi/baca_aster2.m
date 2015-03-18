clear all
clc
                %Pemotong titik terdekat
%================================================
%Semeru
%-8.111658°
%112.922699°

%bromo
% -7.945205°
%112.953801°

%arjuna
% -7.738726°
%112.613451°

%panderman
 %-7.904566°
%112.496427°

x1 = abs (-8.3);
y1 = abs (112.8);
x2 = abs (-8.7);
y2 = abs (112.922699);


[titikx1, titiky1] = potong(x1,y1);
[titikx2, titiky2] = potong(x2,y2);

%jika terbalik maka tukar
if( titikx1 > titikx2)
    temp = titikx1;
    titikx1 = titikx2;
    titikx2 = temp;
end
if( titiky1 > titiky2)
    temp = titiky1;
    titiky1 = titiky2;
    titiky2 = temp;
end 
   

ukuran_baris = titikx2;
ukuran_kolom = titiky2;
awal_baris = titikx1;
awal_kolom = titiky1;

%================================================

% ASTGTM_S08E112_dem.tif
%punca X =  3255 - 250 = 3005
% puncak Y = 1788 = 1538
A = geotiffread('ASTGTM2_S09E112_dem.tif');
%A = geotiffread('ASTGTM2_S08E112_dem.tif');
%whos 
%mesh(A);

for i=awal_baris:ukuran_baris
   for j=awal_kolom:ukuran_kolom
        B(i-(awal_baris-1),j-(awal_kolom-1)) = A(i,j);
   end
end
b=double(B);
%whos B
mesh(b);
%B(1,:)

%disp('            ');
%disp('Keterangan untuk koordinat (1:500, 1:1000)');
%disp('=========================================');
%F = B(1:500, 1:1000); %(vertical,horisontal)
%whos F
%f= double(F);
%figure, mesh(f);
%view(0,90);
%title('ASTGTM_S08E112_dem.tif untuk 1:500, 1:1000');

%disp('            ');
%disp('Keterangan untuk koordinat (3000:3601, 1:1000)');
%disp('=========================================');
%F = double(B(1:3601, 3000:3601)); %(vertical,horisontal)
%whos F
%figure, mesh(F);
%view(0,90);
%title('ASTGTM_S08E112_dem.tif untuk 3000:3601, 1:1000');

% ASTGTM_S09E112_dem.tif
%disp('            ');
%disp('Keterangan ASTGTM_S09E112_dem.tif pake geotiffread');
%disp('==================================================');
%B = geotiffread('ASTGTM_S09E112_dem.tif');
%whos B

%disp('            ');
%disp('Keterangan untuk koordinat (1:500, 1:500)');
%disp('=========================================');
%F = B(1:500,1:500); %(vertical,horisontal)
%whos F
%f = double(F);
%figure, mesh(f);
%view(0,90);

%disp('            ');
%disp('Keterangan untuk koordinat (1:500, 1:1000)');
%disp('=========================================');
%F = B(1:500, 1:3601); %(vertical,horisontal)
%whos F
%f= double(F);
%figure, mesh(f);
%view(0,90);

%disp('            ');
%disp('Keterangan ASTGTM_S09E112_dem.tif pake geotiffinfo');
%disp('==================================================');
%info = geotiffinfo('ASTGTM_S09E112_dem.tif')

