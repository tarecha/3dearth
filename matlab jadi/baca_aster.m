function view = baca_aster(nama, x , y, radius)

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


ukuran_kolom = radius;
ukuran_baris = radius;

[titikx, titiky] = potong(x,y);


  
%{

%}
A = geotiffread('C:\maps\ASTGTM2_S09E112_dem.tif');
%A1 = geotiffread('ASTGTM2_S08E112_dem.tif');
%A2 = geotiffread('ASTGTM2_S07E112_dem.tif');
%A3 = geotiffread('ASTGTM2_S08E113_dem.tif');

%A = geotiffread('ASTGTM2_S08E112_dem.tif');
%whos A
%mesh(A);


da = ukuran_baris / 2;
db = ukuran_kolom / 2;
d1 = titikx - da;
d2 = titiky - db;

%bila kelebihan baris maka potong 
if (titikx + da)>3601
    ukuran_baris = ukuran_baris - ((titikx + da) - 3601); 
end
if (titiky + db)>3601
    ukuran_kolom = ukuran_kolom - ((titiky + db) - 3601); 
end
%bila kelebihan kolom maka potong 
if (d1 < 0)
 d1 = da - titikx;
 ukuran_baris = ukuran_baris - d1;
end
if (d2 < 0)
  d2 = db - titiky;
  ukuran_kolom = ukuran_kolom - d2;
end

	
B = ones(ukuran_baris, ukuran_kolom);
for i=1:ukuran_baris
   for j=1:ukuran_kolom
        B(i,j) = A(i+d1,j+d2);
   end
end

clear A %variable A menyimpan matrik besar lalu di clear kan
b=double(B);

%whos B
b = flipud(b);


    f = figure('Visible','off');  %Create a figure.
                       %Make sure it isn't visible.
        meshc(b); 
        
        zmin = min(min(b));
        zmax = max(max(b));
       axis([1 200 1 200 0 199*30]); %Put something into the figure.   
       axis vis3d;
       axis([1 200 1 200 zmin zmax]);
        %colorbar;
        xlabel('Pixel Langitude');
        ylabel('Pixel Latitude');
        
        zlabel('Ketinggian');
        
      
        
        title(nama, 'FontSize',13);
  
 %       legend(str1);
    
        %legend('show');
      %  h = legend('UTARA','Location','North');
       % set (h);
      view = webfigure(f); %Give the figure to your function
                           % and return the result.
      close(f);    

end
