clear
clc
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

batasRadius = 250;

latitude1 = -7.6256;
latitude2 = -7.8425;

longitude1 = 112.9;
longitude2 = 112.80;

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


rLatitude = floor((abs(latitude1 - latitude2)/2)*3601);
rLongitude = floor((abs(longitude1 - longitude2)/2)*3601);

%pembatasan radius visualisasi
if(rLatitude>batasRadius)
    rLatitude = batasRadius;
end
if(rLongitude>batasRadius)
    rLongitude = batasRadius;
end

    
    