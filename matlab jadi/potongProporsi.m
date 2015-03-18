% fungsi penyamaan koordinat bumi dan posisi matriks
function[barisKoma,kolomKoma] = potongProporsi(latitude, longitude)
latitude = abs(latitude);
longitude = abs(longitude);

barisBatasBawah = floor(latitude);
barisBelakangKoma = latitude - barisBatasBawah;
barisKoma = 3601 * barisBelakangKoma;

kolomBatasBawah = floor(longitude);
kolomBelakangKoma = longitude - kolomBatasBawah;
kolomKoma = 3601 * kolomBelakangKoma;

return