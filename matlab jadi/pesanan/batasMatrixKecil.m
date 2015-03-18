function[latKecilMin,latKecilMax,longKecilMin,longKecilMax] = batasMatrixKecil(latitude, longitude, radiusBaris, radiusKolom,interval)


if interval== 15
    resolusi = (3601 * 2 )-1;
    radiusBaris = radiusBaris * 2;
    radiusKolom = radiusKolom * 2;
else
    resolusi = 3601 ;
end;

deltaLatitude = (1/resolusi)*radiusBaris;
latKecilMin = latitude - deltaLatitude;
latKecilMax = latitude + deltaLatitude;

deltaLongitude = (1/resolusi)*radiusKolom;
longKecilMin = longitude - deltaLongitude;
longKecilMax = longitude + deltaLongitude;
return