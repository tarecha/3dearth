ukuran_baris = 50;
ukuran_kolom = 50;
tanah = zeros(ukuran_baris,ukuran_kolom);
interval = 1; %untuk skala pohonnya. jarak antar titik berapa meter
barisMatriksPohon=20; %baris kolom titik pohon
kolomMatriksPohon=20;

tinggiPohon=0; %ketinggian batang pohon

f=figure();
mesh(tanah);
hold on;

axis([1 ukuran_baris 1 ukuran_kolom 0 ukuran_kolom-1]); % membuat box dimana interval baris kolom dan tingginya sama, ketinggian mulai dari 0
axis vis3d; %cari dokumentasinya. ini agar tampilan kaku waktu dirender tidak benjut
axis off; %mematikan grid garis2 nya

generatePohon(barisMatriksPohon,kolomMatriksPohon,tinggiPohon, interval, f);