using System;

namespace ITarechaSpatialNative
{
  public interface ITarechaSpatialNative
  {
    #region Methods

    Object batasMatrixKecil();

    Object batasMatrixKecil(Object latitude);

    Object batasMatrixKecil(Object latitude, Object longitude);

    Object batasMatrixKecil(Object latitude, Object longitude, Object radiusBaris);

    Object batasMatrixKecil(Object latitude, Object longitude, Object radiusBaris, Object 
                            radiusKolom);

    Object batasMatrixKecil(Object latitude, Object longitude, Object radiusBaris, Object 
                            radiusKolom, Object interval);

    Object[] batasMatrixKecil(int numArgsOut);

    Object[] batasMatrixKecil(int numArgsOut, Object latitude);

    Object[] batasMatrixKecil(int numArgsOut, Object latitude, Object longitude);

    Object[] batasMatrixKecil(int numArgsOut, Object latitude, Object longitude, Object 
                              radiusBaris);

    Object[] batasMatrixKecil(int numArgsOut, Object latitude, Object longitude, Object 
                              radiusBaris, Object radiusKolom);

    Object[] batasMatrixKecil(int numArgsOut, Object latitude, Object longitude, Object 
                              radiusBaris, Object radiusKolom, Object interval);

    void bersihkanMemory();

    Object[] bersihkanMemory(int numArgsOut);

    Object generatefile();

    Object generatefile(Object latitude);

    Object generatefile(Object latitude, Object longitude);

    Object[] generatefile(int numArgsOut);

    Object[] generatefile(int numArgsOut, Object latitude);

    Object[] generatefile(int numArgsOut, Object latitude, Object longitude);

    void generatePohon();

    void generatePohon(Object baris);

    void generatePohon(Object baris, Object kolom);

    void generatePohon(Object baris, Object kolom, Object tinggi);

    void generatePohon(Object baris, Object kolom, Object tinggi, Object resolusi);

    void generatePohon(Object baris, Object kolom, Object tinggi, Object resolusi, Object 
                       figur);

    Object[] generatePohon(int numArgsOut);

    Object[] generatePohon(int numArgsOut, Object baris);

    Object[] generatePohon(int numArgsOut, Object baris, Object kolom);

    Object[] generatePohon(int numArgsOut, Object baris, Object kolom, Object tinggi);

    Object[] generatePohon(int numArgsOut, Object baris, Object kolom, Object tinggi, 
                           Object resolusi);

    Object[] generatePohon(int numArgsOut, Object baris, Object kolom, Object tinggi, 
                           Object resolusi, Object figur);

    void generatePohonKelapa();

    void generatePohonKelapa(Object baris);

    void generatePohonKelapa(Object baris, Object kolom);

    void generatePohonKelapa(Object baris, Object kolom, Object tinggi);

    void generatePohonKelapa(Object baris, Object kolom, Object tinggi, Object resolusi);

    void generatePohonKelapa(Object baris, Object kolom, Object tinggi, Object resolusi, 
                             Object figur);

    Object[] generatePohonKelapa(int numArgsOut);

    Object[] generatePohonKelapa(int numArgsOut, Object baris);

    Object[] generatePohonKelapa(int numArgsOut, Object baris, Object kolom);

    Object[] generatePohonKelapa(int numArgsOut, Object baris, Object kolom, Object 
                                 tinggi);

    Object[] generatePohonKelapa(int numArgsOut, Object baris, Object kolom, Object 
                                 tinggi, Object resolusi);

    Object[] generatePohonKelapa(int numArgsOut, Object baris, Object kolom, Object 
                                 tinggi, Object resolusi, Object figur);

    Object interpolasiLinier();

    Object interpolasiLinier(Object a);

    Object[] interpolasiLinier(int numArgsOut);

    Object[] interpolasiLinier(int numArgsOut, Object a);

    Object mapping();

    Object mapping(Object latitude);

    Object mapping(Object latitude, Object longitude);

    Object[] mapping(int numArgsOut);

    Object[] mapping(int numArgsOut, Object latitude);

    Object[] mapping(int numArgsOut, Object latitude, Object longitude);

    Object mappingMatrixtoNearestCoordinat();

    Object mappingMatrixtoNearestCoordinat(Object barisMariks);

    Object mappingMatrixtoNearestCoordinat(Object barisMariks, Object kolomMatriks);

    Object mappingMatrixtoNearestCoordinat(Object barisMariks, Object kolomMatriks, 
                                           Object latitude_in1);

    Object mappingMatrixtoNearestCoordinat(Object barisMariks, Object kolomMatriks, 
                                           Object latitude_in1, Object longitude_in1);

    Object[] mappingMatrixtoNearestCoordinat(int numArgsOut);

    Object[] mappingMatrixtoNearestCoordinat(int numArgsOut, Object barisMariks);

    Object[] mappingMatrixtoNearestCoordinat(int numArgsOut, Object barisMariks, Object 
                                             kolomMatriks);

    Object[] mappingMatrixtoNearestCoordinat(int numArgsOut, Object barisMariks, Object 
                                             kolomMatriks, Object latitude_in1);

    Object[] mappingMatrixtoNearestCoordinat(int numArgsOut, Object barisMariks, Object 
                                             kolomMatriks, Object latitude_in1, Object 
                                             longitude_in1);

    Object mappingObjek();

    Object mappingObjek(Object latitude);

    Object mappingObjek(Object latitude, Object longitude);

    Object mappingObjek(Object latitude, Object longitude, Object latKecilMin);

    Object mappingObjek(Object latitude, Object longitude, Object latKecilMin, Object 
                        latKecilMax);

    Object mappingObjek(Object latitude, Object longitude, Object latKecilMin, Object 
                        latKecilMax, Object longKecilMin);

    Object mappingObjek(Object latitude, Object longitude, Object latKecilMin, Object 
                        latKecilMax, Object longKecilMin, Object longKecilMax);

    Object mappingObjek(Object latitude, Object longitude, Object latKecilMin, Object 
                        latKecilMax, Object longKecilMin, Object longKecilMax, Object 
                        ukuran_baris);

    Object mappingObjek(Object latitude, Object longitude, Object latKecilMin, Object 
                        latKecilMax, Object longKecilMin, Object longKecilMax, Object 
                        ukuran_baris, Object ukuran_kolom);

    Object[] mappingObjek(int numArgsOut);

    Object[] mappingObjek(int numArgsOut, Object latitude);

    Object[] mappingObjek(int numArgsOut, Object latitude, Object longitude);

    Object[] mappingObjek(int numArgsOut, Object latitude, Object longitude, Object 
                          latKecilMin);

    Object[] mappingObjek(int numArgsOut, Object latitude, Object longitude, Object 
                          latKecilMin, Object latKecilMax);

    Object[] mappingObjek(int numArgsOut, Object latitude, Object longitude, Object 
                          latKecilMin, Object latKecilMax, Object longKecilMin);

    Object[] mappingObjek(int numArgsOut, Object latitude, Object longitude, Object 
                          latKecilMin, Object latKecilMax, Object longKecilMin, Object 
                          longKecilMax);

    Object[] mappingObjek(int numArgsOut, Object latitude, Object longitude, Object 
                          latKecilMin, Object latKecilMax, Object longKecilMin, Object 
                          longKecilMax, Object ukuran_baris);

    Object[] mappingObjek(int numArgsOut, Object latitude, Object longitude, Object 
                          latKecilMin, Object latKecilMax, Object longKecilMin, Object 
                          longKecilMax, Object ukuran_baris, Object ukuran_kolom);

    Object normalisasi();

    Object normalisasi(Object latitude1);

    Object normalisasi(Object latitude1, Object longitude1);

    Object normalisasi(Object latitude1, Object longitude1, Object latitude2);

    Object normalisasi(Object latitude1, Object longitude1, Object latitude2, Object 
                       longitude2);

    Object normalisasi(Object latitude1, Object longitude1, Object latitude2, Object 
                       longitude2, Object batasRadius);

    Object[] normalisasi(int numArgsOut);

    Object[] normalisasi(int numArgsOut, Object latitude1);

    Object[] normalisasi(int numArgsOut, Object latitude1, Object longitude1);

    Object[] normalisasi(int numArgsOut, Object latitude1, Object longitude1, Object 
                         latitude2);

    Object[] normalisasi(int numArgsOut, Object latitude1, Object longitude1, Object 
                         latitude2, Object longitude2);

    Object[] normalisasi(int numArgsOut, Object latitude1, Object longitude1, Object 
                         latitude2, Object longitude2, Object batasRadius);

    Object pilih();

    Object pilih(Object baris_in1);

    Object pilih(Object baris_in1, Object kolom_in1);

    Object pilih(Object baris_in1, Object kolom_in1, Object latitude);

    Object pilih(Object baris_in1, Object kolom_in1, Object latitude, Object longitude);

    Object[] pilih(int numArgsOut);

    Object[] pilih(int numArgsOut, Object baris_in1);

    Object[] pilih(int numArgsOut, Object baris_in1, Object kolom_in1);

    Object[] pilih(int numArgsOut, Object baris_in1, Object kolom_in1, Object latitude);

    Object[] pilih(int numArgsOut, Object baris_in1, Object kolom_in1, Object latitude, 
                   Object longitude);

    Object seleksiBF();

    Object seleksiBF(Object barisKoma);

    Object seleksiBF(Object barisKoma, Object kolomKoma);

    Object[] seleksiBF(int numArgsOut);

    Object[] seleksiBF(int numArgsOut, Object barisKoma);

    Object[] seleksiBF(int numArgsOut, Object barisKoma, Object kolomKoma);

    Object seleksiRHD();

    Object seleksiRHD(Object barisKoma);

    Object seleksiRHD(Object barisKoma, Object kolomKoma);

    Object[] seleksiRHD(int numArgsOut);

    Object[] seleksiRHD(int numArgsOut, Object barisKoma);

    Object[] seleksiRHD(int numArgsOut, Object barisKoma, Object kolomKoma);

    Object visualisasiDuaInputan();

    Object visualisasiDuaInputan(Object nama);

    Object visualisasiDuaInputan(Object nama, Object latitude1);

    Object visualisasiDuaInputan(Object nama, Object latitude1, Object longitude1);

    Object visualisasiDuaInputan(Object nama, Object latitude1, Object longitude1, Object 
                                 latitude2);

    Object visualisasiDuaInputan(Object nama, Object latitude1, Object longitude1, Object 
                                 latitude2, Object longitude2);

    Object visualisasiDuaInputan(Object nama, Object latitude1, Object longitude1, Object 
                                 latitude2, Object longitude2, Object batasRadius);

    Object visualisasiDuaInputan(Object nama, Object latitude1, Object longitude1, Object 
                                 latitude2, Object longitude2, Object batasRadius, Object 
                                 seleksi);

    Object visualisasiDuaInputan(Object nama, Object latitude1, Object longitude1, Object 
                                 latitude2, Object longitude2, Object batasRadius, Object 
                                 seleksi, Object interpolasi);

    Object visualisasiDuaInputan(Object nama, Object latitude1, Object longitude1, Object 
                                 latitude2, Object longitude2, Object batasRadius, Object 
                                 seleksi, Object interpolasi, Object pohon);

    Object visualisasiDuaInputan(Object nama, Object latitude1, Object longitude1, Object 
                                 latitude2, Object longitude2, Object batasRadius, Object 
                                 seleksi, Object interpolasi, Object pohon, Object 
                                 deteksiAir);

    Object[] visualisasiDuaInputan(int numArgsOut);

    Object[] visualisasiDuaInputan(int numArgsOut, Object nama);

    Object[] visualisasiDuaInputan(int numArgsOut, Object nama, Object latitude1);

    Object[] visualisasiDuaInputan(int numArgsOut, Object nama, Object latitude1, Object 
                                   longitude1);

    Object[] visualisasiDuaInputan(int numArgsOut, Object nama, Object latitude1, Object 
                                   longitude1, Object latitude2);

    Object[] visualisasiDuaInputan(int numArgsOut, Object nama, Object latitude1, Object 
                                   longitude1, Object latitude2, Object longitude2);

    Object[] visualisasiDuaInputan(int numArgsOut, Object nama, Object latitude1, Object 
                                   longitude1, Object latitude2, Object longitude2, 
                                   Object batasRadius);

    Object[] visualisasiDuaInputan(int numArgsOut, Object nama, Object latitude1, Object 
                                   longitude1, Object latitude2, Object longitude2, 
                                   Object batasRadius, Object seleksi);

    Object[] visualisasiDuaInputan(int numArgsOut, Object nama, Object latitude1, Object 
                                   longitude1, Object latitude2, Object longitude2, 
                                   Object batasRadius, Object seleksi, Object 
                                   interpolasi);

    Object[] visualisasiDuaInputan(int numArgsOut, Object nama, Object latitude1, Object 
                                   longitude1, Object latitude2, Object longitude2, 
                                   Object batasRadius, Object seleksi, Object 
                                   interpolasi, Object pohon);

    Object[] visualisasiDuaInputan(int numArgsOut, Object nama, Object latitude1, Object 
                                   longitude1, Object latitude2, Object longitude2, 
                                   Object batasRadius, Object seleksi, Object 
                                   interpolasi, Object pohon, Object deteksiAir);

    Object visualisasiRadius();

    Object visualisasiRadius(Object nama);

    Object visualisasiRadius(Object nama, Object latitude);

    Object visualisasiRadius(Object nama, Object latitude, Object longitude);

    Object visualisasiRadius(Object nama, Object latitude, Object longitude, Object 
                             radius);

    Object visualisasiRadius(Object nama, Object latitude, Object longitude, Object 
                             radius, Object seleksi);

    Object visualisasiRadius(Object nama, Object latitude, Object longitude, Object 
                             radius, Object seleksi, Object interpolasi);

    Object visualisasiRadius(Object nama, Object latitude, Object longitude, Object 
                             radius, Object seleksi, Object interpolasi, Object pohon);

    Object visualisasiRadius(Object nama, Object latitude, Object longitude, Object 
                             radius, Object seleksi, Object interpolasi, Object pohon, 
                             Object deteksiAir);

    Object[] visualisasiRadius(int numArgsOut);

    Object[] visualisasiRadius(int numArgsOut, Object nama);

    Object[] visualisasiRadius(int numArgsOut, Object nama, Object latitude);

    Object[] visualisasiRadius(int numArgsOut, Object nama, Object latitude, Object 
                               longitude);

    Object[] visualisasiRadius(int numArgsOut, Object nama, Object latitude, Object 
                               longitude, Object radius);

    Object[] visualisasiRadius(int numArgsOut, Object nama, Object latitude, Object 
                               longitude, Object radius, Object seleksi);

    Object[] visualisasiRadius(int numArgsOut, Object nama, Object latitude, Object 
                               longitude, Object radius, Object seleksi, Object 
                               interpolasi);

    Object[] visualisasiRadius(int numArgsOut, Object nama, Object latitude, Object 
                               longitude, Object radius, Object seleksi, Object 
                               interpolasi, Object pohon);

    Object[] visualisasiRadius(int numArgsOut, Object nama, Object latitude, Object 
                               longitude, Object radius, Object seleksi, Object 
                               interpolasi, Object pohon, Object deteksiAir);

    #endregion Methods
  }
}
