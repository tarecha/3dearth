

clc
                %Pemotong titik terdekat
%================================================
%Semeru
%x = -8.111658;
%y = 112.922699;
radius = 500;
%sukhoi
%latitude = -6.718889;
%longitude = 106.7208;

%rumah
%x = -7.92368;
%y = 112.557792;
%radius = 200;
%bromo
%biak
latitude = -0.895349;
longitude = 135.83725;

%arjuna
% -7.738726°
%112.613451°

%panderman
%latitude=-7.904566;
%longitude=112.496427;


ukuran_kolom = radius * 2;
ukuran_baris = radius * 2;

[baris, kolom] = potong(latitude,longitude);
[A, baris,kolom] =  pilih(baris, kolom, latitude, longitude);

  
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


d1 = baris - radius;
d2 = kolom - radius;

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
       
       %{
        cm = zeros(dZ-2, 3, 'double');
        for i=1:dZ-800
             cm(i,:)=[1 0 1];
        end
       %}
        cm = colormap('jet');
        if(zmin==0)
            cm(1,:)= [1 1 1];
        end;        
        colormap(cm);
      
         meshc(b);
        
      
       clear b;
       %nilai permukaan laut 0
       if ((zmax-zmin)>0)
            if(ukuran_baris >= ukuran_kolom)
                ukuran_tinggi = ukuran_baris;
            else
                ukuran_tinggi = ukuran_kolom;
            end;
            
            axis([1 ukuran_baris 1 ukuran_kolom 0 (ukuran_tinggi-1)*30]); %Put something into the figure.   
            axis vis3d;
            
            axis([1 ukuran_baris 1 ukuran_kolom zmin zmax]);
       end;
        %colorbar;
        xlabel('Pixel Langitude');
        ylabel('Pixel Latitude');
        
        zlabel('Ketinggian');
        
      
        
        
 %       legend(str1);
    
        %legend('show');
      %  h = legend('UTARA','Location','North');
       % set (h);
   %   view = webfigure(f); %Give the figure to your function
                           % and return the result.
   %   close(f);    


