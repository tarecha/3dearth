clc;
format longG;
longitude = abs(-7.9)
latitude = abs(112.9) 


%{
penyederhanaan rumus agar proses perhitungan lebih cepat.
misal 
in = 112.5; input
lowIn = 112; batas bawah input 1 arc second
HighIn = 113; batas bawah atas 1 arc second
lowOut = 1;      batas bawah matriks
highOut = 3601;  batas atas matriks

out = lowOut + (in-lowIn) * ((HighOut - lowOut) / (HighIn - lowIn))
out = 1    + 0.5        * (3600           / 1            )
out = 1    + 1800
out = 1801
1801 posisi tepat di tengah-tengah matriks dengan batas bawah 1 dan batas
     atas 3601
%}

barisBatasBawah = floor(latitude)
barisBelakangKoma = latitude - barisBatasBawah
barisKoma = 1 + (barisBelakangKoma  * 3600)%penyederhanaan rumus
tesbelakang = latitude -  floor(latitude)

kolomBatasBawah = floor(longitude)
kolomBelakangKoma = longitude - kolomBatasBawah
kolomKoma = 1 + (kolomBelakangKoma  * 3600) %penyederhanaan rumus



