% fungsi penyamaan koordinat bumi dan posisi matriks
function[barisKoma,kolomKoma] = mapping(latitude, longitude)


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

if(latitude<0)
    latitude = abs(latitude);
    barisBatasBawah = floor(latitude);
    barisBelakangKoma = latitude - barisBatasBawah;
    barisKoma = 1 + (barisBelakangKoma  * 3600); %penyederhanaan rumus
else
    latitude = abs(latitude);
    barisBatasBawah = floor(latitude);
    barisBelakangKoma = latitude - barisBatasBawah;
    barisKoma = 1 + (barisBelakangKoma  * 3600); %penyederhanaan rumus
    barisKoma = 3601 - barisKoma;
end;


if(longitude>0)
    longitude = abs(longitude);
    kolomBatasBawah = floor(longitude);
    kolomBelakangKoma = longitude - kolomBatasBawah;
    kolomKoma = 1 + (kolomBelakangKoma  * 3600); %penyederhanaan rumus
else
    longitude = abs(longitude);
    kolomBatasBawah = floor(longitude);
    kolomBelakangKoma = longitude - kolomBatasBawah;
    kolomKoma = 1 + (kolomBelakangKoma  * 3600); %penyederhanaan rumus
    kolomKoma = 3601 - kolomKoma;
end;





return