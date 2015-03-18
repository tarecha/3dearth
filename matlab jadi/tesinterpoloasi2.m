clear all;
%f = figure();
format longG;
nama = 'Algoritma Deteksi Area Air Danau Segara Anak Gunung Rinjani';
latitude=	-8.438431;
longitude=112.6903;
radiusBaris = 110;
radiusKolom =110;
seleksi = 'RHD';
interpolasi = '0';
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

	
B = zeros(ukuran_baris, ukuran_kolom);
for i=1:ukuran_baris
   for j=1:ukuran_kolom
        B(i,j) = A(i+d1,j+d2);
   end
end

clear A; %variable A menyimpan matrik besar lalu di clear kan
b=double(B);
%clear B;
b = flipud(b);

zmin = min(min(b));
zmax = max(max(b));
	cm = colormap('jet'); 
%     delta = floor((zmax-zmin)/64)
%     cm=[interp(cm(:,1),delta) interp(cm(:,2),delta) interp(cm(:,3),delta)];
	%permukaan laut 0, jika <=0 warna diganti putih
% 	if (zmin<=0) 
% 		cm(1,:)= [1 1 1];
% 	end;
%    
    colormap(cm);

a = b;
[m,n] = size(a);
b1 = reshape(a,1,m*n);
c = tabulate(b1);
[~,d] = max(c(:,2));
x=c(d,1);

nn = zeros(m,n);
[bar,col]=find(a==x);
dimensi = size(bar);

% nn(bar(1:dimensi),col(1:dimensi))=1;
for i=1:dimensi
    nn(bar(i),col(i))=1;
end;

% figure,imshow(nn);
% for i=1:m
%     for j=1:n
%        h= a(i,j);
%         if(h==x)
%           nn(i,j)=1;
%         else            
%         end
%     end;
% end;

%nn=double(edge(nn,'prewitt'));


L = medfilt2(nn,[5 5]);
 figure,imshow(L);hold on;
[bar,col]=find(L==1);
for i=1:size(bar);
   b(bar(i),col(i))=NaN;
end;
% figure, imshow(L)
% figure,imshow(b);
nn=double(edge(L,'canny'));
% figure,imshow(nn);
% figure,imshow(nn);

[bar,col]=find(nn==1);
figure,imshow(nn);
susunan = [bar col];
[m,n] = size(susunan);


barisAir = zeros(m,1);
kolomAir = zeros(m,1);
tinggiAir = zeros(m,1);
tinggiAir(:) = x;


barisAwal=0;
kolomAwal=0;
counter = 1;
tic
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
llop = toc
s2 = [barisAir kolomAir];

%mesh(nn);




%figure,fill3(nn,'g')

% title(nama, 'FontSize',13);
 hold on;
zutara = b((radiusBaris*2+1),(radiusKolom+1));
if strcmp(interpolasi, '1')%pemilihan interpolasi
    interval = 15;
    kolomUtara = (radiusKolom+1)*2-1;
    barisUtara = (radiusBaris*2+1)*2-1;
    kolomTengah = (radiusKolom+1)*2-1;
    barisTengah = (radiusBaris+1)*2-1;
    ukuran_kolom = ukuran_kolom *2-1;
    ukuran_baris = ukuran_baris *2-1;
    whos b
    b = interpolasiLinear(b);
    whos b
else
    interval = 30;
    kolomUtara = radiusKolom+1;
    barisUtara = radiusBaris*2+1;
    kolomTengah = radiusKolom+1;
    barisTengah = radiusBaris+1;
   
end; 

%scatter3(kolomTengah, barisTengah, ztitik,100,'k','o','filled');
hold on;
%scatter3(kolomUtara, barisUtara, zutara,100,'m','o','filled');
hold on;
tic
% mesh(b); 
me=toc
% axis off;
 hold on;
%  fill3(kolomAir,barisAir,tinggiAir,[0 0 0]);
% area = polyarea(barisAir,kolomAir)

%clear b;

%       nilai permukaan laut 0
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


        
        %informasi memory yang digunakan 
        [usr, sys] = memory;
        memMATLAB= int16(usr.MemUsedMATLAB / 1000000); %konversi ke MB lalu diinteger kan untuk penyederhanaan nilai
        memPhyAvailable = int16(sys.PhysicalMemory.Available / 1000000);
        memPhyTotal = int16(sys.PhysicalMemory.Total / 1000000);
        infoMemory  = strcat('Used : ',num2str(memMATLAB),' MB,  Available : ',num2str(memPhyAvailable),' MB, Total : ' ,num2str(memPhyTotal),' MB');



