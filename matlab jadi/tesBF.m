
clear all;

                %Pemotong titik terdekat
%================================================
%Semeru
nama = 'Pulau Sempu';
radiusBaris = 20;
radiusKolom = 20;
%biak
%latitude = 1.5;
%longitude = 103.798599;

%rumah
%x = -7.92368;
%y = 112.557792;
%radius = 200;
%bromo
%latitude = -7.7;
%longitude = 112.7;

%arjuna
% -7.738726°
%112.613451°

%panderman
latitude=-8.5;	
longitude=112.1;



ukuran_kolom = radiusKolom * 2;
ukuran_baris = radiusBaris * 2;

[barisKoma, kolomKoma] = mapping(latitude,longitude);
tic;
[barisMatriks, kolomMatriks] = seleksiRHD(barisKoma, kolomKoma);
waktu = toc;
[A, baris, kolom] =  pilih(barisMatriks, kolomMatriks, latitude, longitude);
ztitik=A(baris, kolom); %ketinggian pada titik tengah 
  
%{

%}
%A = geotiffread('C:\maps\ASTGTM2_S08E112_dem.tif');
%A1 = geotiffread('ASTGTM2_S08E112_dem.tif');
%A2 = geotiffread('ASTGTM2_S07E112_dem.tif');
%A3 = geotiffread('ASTGTM2_S08E113_dem.tif');

%A = geotiffread('ASTGTM2_S08E112_dem.tif');
%whos A
%mesh(A);

%mencari nilai tengah, mean.


d1 = baris - radiusBaris;
d2 = kolom - radiusKolom;

% %bila kelebihan baris maka potong
% if (baris + da)>3601
%     ukuran_baris = ukuran_baris - ((baris + da) - 3601); 
% end
% if (kolom + db)>3601
%     ukuran_kolom = ukuran_kolom - ((kolom + db) - 3601); 
% end
% % %bila kelebihan kolom maka potong
% if (d1 < 0)
%  d1 = da - baris;
%  ukuran_baris = ukuran_baris - d1;
% end
% if (d2 < 0)
%   d2 = db - kolom;
%   ukuran_kolom = ukuran_kolom - d2;
% end

	
B = zeros(ukuran_baris, ukuran_kolom);
for i=1:ukuran_baris
   for j=1:ukuran_kolom
        B(i,j) = A(i+d1,j+d2);
   end
end
clear A; %variable A menyimpan matrik besar lalu di clear kan
b=double(B);
clear B;

%whos B
b = flipud(b);


 %   f = figure('Visible','off');  %Create a figure.
                       %Make sure it isn't visible.
                       zmin = min(min(b));
zmax = max(max(b));
cm = colormap('jet'); 
        if(zmin<=0) %permukaan laut 0, jika 0 warna diganti putih
          %  cm(1,:)= [1 1 1];
        end;        
  colormap(cm);
  scatter3(radiusKolom, radiusBaris, ztitik,100,'k','filled');
 hold on;  
   mesh(b);    

clear b;
hold off;
       %nilai permukaan laut 0
       if ((zmax-zmin)>0)
            if(ukuran_baris >= ukuran_kolom)
                ukuran_tinggi = ukuran_baris;
            else
                ukuran_tinggi = ukuran_kolom;
            end;
            
            axis([1 ukuran_tinggi 1 ukuran_tinggi 0 (ukuran_tinggi-1)*30]); %Put something into the figure.   
            axis vis3d;
            
          axis([1 ukuran_kolom 1 ukuran_baris zmin zmax]);
       end;
        %colorbar;
        xlabel('Pixel Longitude');
        ylabel('Pixel Latitude');
        axis off;
        zlabel('Ketinggian');
        
         title(nama, 'FontSize',13);     
        %informasi memory yang digunakan matlab
        [usr, sys] = memory;
        memMATLAB= int16(usr.MemUsedMATLAB / 1000000); %konversi ke MB lalu diinteger kan untuk penyederhanaan nilai
        memPhyAvailable = int16(sys.PhysicalMemory.Available / 1000000);
        memPhyTotal = int16(sys.PhysicalMemory.Total / 1000000);
        infoMemory  = strcat('Memory yang digunakan visualisasi : ',num2str(memMATLAB),' MB Memory fisik yang tersedia : ',num2str(memPhyAvailable),' MB Memory fisik total : ' ,num2str(memPhyTotal),' MB');

        infoMemory
        waktu
 %       legend(str1);
    view(-46,34);

      %  h = legend('UTARA','Location','North');
       % set (h);
   %   view = webfigure(f); %Give the figure to your function
                           % and return the result.
   %   close(f);    


