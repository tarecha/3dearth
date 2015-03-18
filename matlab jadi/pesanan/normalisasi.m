function [tengahLatitude,tengahLongitude,rLatitude,rLongitude,statusPotong] = normalisasi(latitude1 , longitude1, latitude2, longitude2, batasRadius)
%{
                        latitude1
                +-------------------+
                |                   |
                |                   |
                |                   |
     longitude1 |         x         |  longitude2
                |                   |
                |                   |
                |                   |
                +-------------------+
                        latitude2

%}

%jika nilai terbalik yang lebih besar maka tukar
if(latitude1 < latitude2)
    temp = latitude1;
    latitude1 = latitude2;
    latitude2 = temp;
end
if(longitude2 < longitude1)
    temp = longitude1;
    longitude1 = longitude2;
    longitude2 = temp;
end


tengahLatitude = ((latitude1 - latitude2)/2)+latitude2;
tengahLongitude = ((longitude2 - longitude1)/2)+longitude1;


rLatitude = ceil((abs(latitude1 - latitude2)/2)*3600);%dikali 3600 karena pada perhitungan selanjutnya +1 untuk dijadikan titik tengah
rLongitude = ceil((abs(longitude2 - longitude1)/2)*3600);

%pembatasan radius visualisasi
%jika melebihi batas  maka statusPotong=1
statusPotong=0;
if(rLatitude>batasRadius)
    rLatitude = batasRadius;
    statusPotong=1;
end
if(rLongitude>batasRadius)
    rLongitude = batasRadius;
    statusPotong=1;
end

return


