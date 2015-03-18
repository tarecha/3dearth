function[latitude,longitude] = mappingMatrixtoNearestCoordinat(barisMariks, kolomMatriks, latitude,longitude)

latitudeKoma = (barisMariks - 1)*(1/3600);
if latitude < 0
    latitudeMin = ceil(latitude);
    latitude = latitudeMin - latitudeKoma;
else
    latitudeMin = floor(latitude);
    latitude = latitudeMin + latitudeKoma;
end;

longitudeKoma = (kolomMatriks - 1)*(1/3600);
if longitude < 0
    longitudeMin = ceil(longitude);
    longitude = longitudeMin - longitudeKoma;
else
    longitudeMin = floor(longitude);
    longitude = longitudeMin + longitudeKoma;
end;

return