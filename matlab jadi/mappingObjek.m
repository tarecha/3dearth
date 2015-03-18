
function[barisKoma,kolomKoma] = mappingObjek(latitude, longitude, latKecilMin,latKecilMax,longKecilMin,longKecilMax,ukuran_baris,ukuran_kolom)

barisKoma = 1 + (latitude - latKecilMin)*((ukuran_baris - 1)/(latKecilMax-latKecilMin));


kolomKoma = 1 + (longitude - longKecilMin)*((ukuran_kolom - 1)/(longKecilMax-longKecilMin));



return