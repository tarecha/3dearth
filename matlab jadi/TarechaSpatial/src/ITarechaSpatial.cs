using System;

using MathWorks.MATLAB.NET.Arrays;
using MathWorks.MATLAB.NET.Utility;
        
namespace ITarechaSpatial
{
  public interface ITarechaSpatial
  {
    #region Methods

    MWArray batasMatrixKecil();

    MWArray batasMatrixKecil(MWArray latitude);

    MWArray batasMatrixKecil(MWArray latitude, MWArray longitude);

    MWArray batasMatrixKecil(MWArray latitude, MWArray longitude, MWArray radiusBaris);

    MWArray batasMatrixKecil(MWArray latitude, MWArray longitude, MWArray radiusBaris, 
                             MWArray radiusKolom);

    MWArray batasMatrixKecil(MWArray latitude, MWArray longitude, MWArray radiusBaris, 
                             MWArray radiusKolom, MWArray interval);

    MWArray[] batasMatrixKecil(int numArgsOut);

    MWArray[] batasMatrixKecil(int numArgsOut, MWArray latitude);

    MWArray[] batasMatrixKecil(int numArgsOut, MWArray latitude, MWArray longitude);

    MWArray[] batasMatrixKecil(int numArgsOut, MWArray latitude, MWArray longitude, 
                               MWArray radiusBaris);

    MWArray[] batasMatrixKecil(int numArgsOut, MWArray latitude, MWArray longitude, 
                               MWArray radiusBaris, MWArray radiusKolom);

    MWArray[] batasMatrixKecil(int numArgsOut, MWArray latitude, MWArray longitude, 
                               MWArray radiusBaris, MWArray radiusKolom, MWArray 
                               interval);

    void bersihkanMemory();

    MWArray[] bersihkanMemory(int numArgsOut);

    MWArray generatefile();

    MWArray generatefile(MWArray latitude);

    MWArray generatefile(MWArray latitude, MWArray longitude);

    MWArray[] generatefile(int numArgsOut);

    MWArray[] generatefile(int numArgsOut, MWArray latitude);

    MWArray[] generatefile(int numArgsOut, MWArray latitude, MWArray longitude);

    void generatePohon();

    void generatePohon(MWArray baris);

    void generatePohon(MWArray baris, MWArray kolom);

    void generatePohon(MWArray baris, MWArray kolom, MWArray tinggi);

    void generatePohon(MWArray baris, MWArray kolom, MWArray tinggi, MWArray resolusi);

    void generatePohon(MWArray baris, MWArray kolom, MWArray tinggi, MWArray resolusi, 
                       MWArray figur);

    MWArray[] generatePohon(int numArgsOut);

    MWArray[] generatePohon(int numArgsOut, MWArray baris);

    MWArray[] generatePohon(int numArgsOut, MWArray baris, MWArray kolom);

    MWArray[] generatePohon(int numArgsOut, MWArray baris, MWArray kolom, MWArray tinggi);

    MWArray[] generatePohon(int numArgsOut, MWArray baris, MWArray kolom, MWArray tinggi, 
                            MWArray resolusi);

    MWArray[] generatePohon(int numArgsOut, MWArray baris, MWArray kolom, MWArray tinggi, 
                            MWArray resolusi, MWArray figur);

    void generatePohonKelapa();

    void generatePohonKelapa(MWArray baris);

    void generatePohonKelapa(MWArray baris, MWArray kolom);

    void generatePohonKelapa(MWArray baris, MWArray kolom, MWArray tinggi);

    void generatePohonKelapa(MWArray baris, MWArray kolom, MWArray tinggi, MWArray 
                             resolusi);

    void generatePohonKelapa(MWArray baris, MWArray kolom, MWArray tinggi, MWArray 
                             resolusi, MWArray figur);

    MWArray[] generatePohonKelapa(int numArgsOut);

    MWArray[] generatePohonKelapa(int numArgsOut, MWArray baris);

    MWArray[] generatePohonKelapa(int numArgsOut, MWArray baris, MWArray kolom);

    MWArray[] generatePohonKelapa(int numArgsOut, MWArray baris, MWArray kolom, MWArray 
                                  tinggi);

    MWArray[] generatePohonKelapa(int numArgsOut, MWArray baris, MWArray kolom, MWArray 
                                  tinggi, MWArray resolusi);

    MWArray[] generatePohonKelapa(int numArgsOut, MWArray baris, MWArray kolom, MWArray 
                                  tinggi, MWArray resolusi, MWArray figur);

    MWArray interpolasiLinier();

    MWArray interpolasiLinier(MWArray a);

    MWArray[] interpolasiLinier(int numArgsOut);

    MWArray[] interpolasiLinier(int numArgsOut, MWArray a);

    MWArray mapping();

    MWArray mapping(MWArray latitude);

    MWArray mapping(MWArray latitude, MWArray longitude);

    MWArray[] mapping(int numArgsOut);

    MWArray[] mapping(int numArgsOut, MWArray latitude);

    MWArray[] mapping(int numArgsOut, MWArray latitude, MWArray longitude);

    MWArray mappingMatrixtoNearestCoordinat();

    MWArray mappingMatrixtoNearestCoordinat(MWArray barisMariks);

    MWArray mappingMatrixtoNearestCoordinat(MWArray barisMariks, MWArray kolomMatriks);

    MWArray mappingMatrixtoNearestCoordinat(MWArray barisMariks, MWArray kolomMatriks, 
                                            MWArray latitude_in1);

    MWArray mappingMatrixtoNearestCoordinat(MWArray barisMariks, MWArray kolomMatriks, 
                                            MWArray latitude_in1, MWArray longitude_in1);

    MWArray[] mappingMatrixtoNearestCoordinat(int numArgsOut);

    MWArray[] mappingMatrixtoNearestCoordinat(int numArgsOut, MWArray barisMariks);

    MWArray[] mappingMatrixtoNearestCoordinat(int numArgsOut, MWArray barisMariks, 
                                              MWArray kolomMatriks);

    MWArray[] mappingMatrixtoNearestCoordinat(int numArgsOut, MWArray barisMariks, 
                                              MWArray kolomMatriks, MWArray latitude_in1);

    MWArray[] mappingMatrixtoNearestCoordinat(int numArgsOut, MWArray barisMariks, 
                                              MWArray kolomMatriks, MWArray latitude_in1, 
                                              MWArray longitude_in1);

    MWArray mappingObjek();

    MWArray mappingObjek(MWArray latitude);

    MWArray mappingObjek(MWArray latitude, MWArray longitude);

    MWArray mappingObjek(MWArray latitude, MWArray longitude, MWArray latKecilMin);

    MWArray mappingObjek(MWArray latitude, MWArray longitude, MWArray latKecilMin, 
                         MWArray latKecilMax);

    MWArray mappingObjek(MWArray latitude, MWArray longitude, MWArray latKecilMin, 
                         MWArray latKecilMax, MWArray longKecilMin);

    MWArray mappingObjek(MWArray latitude, MWArray longitude, MWArray latKecilMin, 
                         MWArray latKecilMax, MWArray longKecilMin, MWArray longKecilMax);

    MWArray mappingObjek(MWArray latitude, MWArray longitude, MWArray latKecilMin, 
                         MWArray latKecilMax, MWArray longKecilMin, MWArray longKecilMax, 
                         MWArray ukuran_baris);

    MWArray mappingObjek(MWArray latitude, MWArray longitude, MWArray latKecilMin, 
                         MWArray latKecilMax, MWArray longKecilMin, MWArray longKecilMax, 
                         MWArray ukuran_baris, MWArray ukuran_kolom);

    MWArray[] mappingObjek(int numArgsOut);

    MWArray[] mappingObjek(int numArgsOut, MWArray latitude);

    MWArray[] mappingObjek(int numArgsOut, MWArray latitude, MWArray longitude);

    MWArray[] mappingObjek(int numArgsOut, MWArray latitude, MWArray longitude, MWArray 
                           latKecilMin);

    MWArray[] mappingObjek(int numArgsOut, MWArray latitude, MWArray longitude, MWArray 
                           latKecilMin, MWArray latKecilMax);

    MWArray[] mappingObjek(int numArgsOut, MWArray latitude, MWArray longitude, MWArray 
                           latKecilMin, MWArray latKecilMax, MWArray longKecilMin);

    MWArray[] mappingObjek(int numArgsOut, MWArray latitude, MWArray longitude, MWArray 
                           latKecilMin, MWArray latKecilMax, MWArray longKecilMin, 
                           MWArray longKecilMax);

    MWArray[] mappingObjek(int numArgsOut, MWArray latitude, MWArray longitude, MWArray 
                           latKecilMin, MWArray latKecilMax, MWArray longKecilMin, 
                           MWArray longKecilMax, MWArray ukuran_baris);

    MWArray[] mappingObjek(int numArgsOut, MWArray latitude, MWArray longitude, MWArray 
                           latKecilMin, MWArray latKecilMax, MWArray longKecilMin, 
                           MWArray longKecilMax, MWArray ukuran_baris, MWArray 
                           ukuran_kolom);

    MWArray normalisasi();

    MWArray normalisasi(MWArray latitude1);

    MWArray normalisasi(MWArray latitude1, MWArray longitude1);

    MWArray normalisasi(MWArray latitude1, MWArray longitude1, MWArray latitude2);

    MWArray normalisasi(MWArray latitude1, MWArray longitude1, MWArray latitude2, MWArray 
                        longitude2);

    MWArray normalisasi(MWArray latitude1, MWArray longitude1, MWArray latitude2, MWArray 
                        longitude2, MWArray batasRadius);

    MWArray[] normalisasi(int numArgsOut);

    MWArray[] normalisasi(int numArgsOut, MWArray latitude1);

    MWArray[] normalisasi(int numArgsOut, MWArray latitude1, MWArray longitude1);

    MWArray[] normalisasi(int numArgsOut, MWArray latitude1, MWArray longitude1, MWArray 
                          latitude2);

    MWArray[] normalisasi(int numArgsOut, MWArray latitude1, MWArray longitude1, MWArray 
                          latitude2, MWArray longitude2);

    MWArray[] normalisasi(int numArgsOut, MWArray latitude1, MWArray longitude1, MWArray 
                          latitude2, MWArray longitude2, MWArray batasRadius);

    MWArray pilih();

    MWArray pilih(MWArray baris_in1);

    MWArray pilih(MWArray baris_in1, MWArray kolom_in1);

    MWArray pilih(MWArray baris_in1, MWArray kolom_in1, MWArray latitude);

    MWArray pilih(MWArray baris_in1, MWArray kolom_in1, MWArray latitude, MWArray 
                  longitude);

    MWArray[] pilih(int numArgsOut);

    MWArray[] pilih(int numArgsOut, MWArray baris_in1);

    MWArray[] pilih(int numArgsOut, MWArray baris_in1, MWArray kolom_in1);

    MWArray[] pilih(int numArgsOut, MWArray baris_in1, MWArray kolom_in1, MWArray 
                    latitude);

    MWArray[] pilih(int numArgsOut, MWArray baris_in1, MWArray kolom_in1, MWArray 
                    latitude, MWArray longitude);

    MWArray seleksiBF();

    MWArray seleksiBF(MWArray barisKoma);

    MWArray seleksiBF(MWArray barisKoma, MWArray kolomKoma);

    MWArray[] seleksiBF(int numArgsOut);

    MWArray[] seleksiBF(int numArgsOut, MWArray barisKoma);

    MWArray[] seleksiBF(int numArgsOut, MWArray barisKoma, MWArray kolomKoma);

    MWArray seleksiRHD();

    MWArray seleksiRHD(MWArray barisKoma);

    MWArray seleksiRHD(MWArray barisKoma, MWArray kolomKoma);

    MWArray[] seleksiRHD(int numArgsOut);

    MWArray[] seleksiRHD(int numArgsOut, MWArray barisKoma);

    MWArray[] seleksiRHD(int numArgsOut, MWArray barisKoma, MWArray kolomKoma);

    MWArray visualisasiDuaInputan();

    MWArray visualisasiDuaInputan(MWArray nama);

    MWArray visualisasiDuaInputan(MWArray nama, MWArray latitude1);

    MWArray visualisasiDuaInputan(MWArray nama, MWArray latitude1, MWArray longitude1);

    MWArray visualisasiDuaInputan(MWArray nama, MWArray latitude1, MWArray longitude1, 
                                  MWArray latitude2);

    MWArray visualisasiDuaInputan(MWArray nama, MWArray latitude1, MWArray longitude1, 
                                  MWArray latitude2, MWArray longitude2);

    MWArray visualisasiDuaInputan(MWArray nama, MWArray latitude1, MWArray longitude1, 
                                  MWArray latitude2, MWArray longitude2, MWArray 
                                  batasRadius);

    MWArray visualisasiDuaInputan(MWArray nama, MWArray latitude1, MWArray longitude1, 
                                  MWArray latitude2, MWArray longitude2, MWArray 
                                  batasRadius, MWArray seleksi);

    MWArray visualisasiDuaInputan(MWArray nama, MWArray latitude1, MWArray longitude1, 
                                  MWArray latitude2, MWArray longitude2, MWArray 
                                  batasRadius, MWArray seleksi, MWArray interpolasi);

    MWArray visualisasiDuaInputan(MWArray nama, MWArray latitude1, MWArray longitude1, 
                                  MWArray latitude2, MWArray longitude2, MWArray 
                                  batasRadius, MWArray seleksi, MWArray interpolasi, 
                                  MWArray pohon);

    MWArray visualisasiDuaInputan(MWArray nama, MWArray latitude1, MWArray longitude1, 
                                  MWArray latitude2, MWArray longitude2, MWArray 
                                  batasRadius, MWArray seleksi, MWArray interpolasi, 
                                  MWArray pohon, MWArray deteksiAir);

    MWArray[] visualisasiDuaInputan(int numArgsOut);

    MWArray[] visualisasiDuaInputan(int numArgsOut, MWArray nama);

    MWArray[] visualisasiDuaInputan(int numArgsOut, MWArray nama, MWArray latitude1);

    MWArray[] visualisasiDuaInputan(int numArgsOut, MWArray nama, MWArray latitude1, 
                                    MWArray longitude1);

    MWArray[] visualisasiDuaInputan(int numArgsOut, MWArray nama, MWArray latitude1, 
                                    MWArray longitude1, MWArray latitude2);

    MWArray[] visualisasiDuaInputan(int numArgsOut, MWArray nama, MWArray latitude1, 
                                    MWArray longitude1, MWArray latitude2, MWArray 
                                    longitude2);

    MWArray[] visualisasiDuaInputan(int numArgsOut, MWArray nama, MWArray latitude1, 
                                    MWArray longitude1, MWArray latitude2, MWArray 
                                    longitude2, MWArray batasRadius);

    MWArray[] visualisasiDuaInputan(int numArgsOut, MWArray nama, MWArray latitude1, 
                                    MWArray longitude1, MWArray latitude2, MWArray 
                                    longitude2, MWArray batasRadius, MWArray seleksi);

    MWArray[] visualisasiDuaInputan(int numArgsOut, MWArray nama, MWArray latitude1, 
                                    MWArray longitude1, MWArray latitude2, MWArray 
                                    longitude2, MWArray batasRadius, MWArray seleksi, 
                                    MWArray interpolasi);

    MWArray[] visualisasiDuaInputan(int numArgsOut, MWArray nama, MWArray latitude1, 
                                    MWArray longitude1, MWArray latitude2, MWArray 
                                    longitude2, MWArray batasRadius, MWArray seleksi, 
                                    MWArray interpolasi, MWArray pohon);

    MWArray[] visualisasiDuaInputan(int numArgsOut, MWArray nama, MWArray latitude1, 
                                    MWArray longitude1, MWArray latitude2, MWArray 
                                    longitude2, MWArray batasRadius, MWArray seleksi, 
                                    MWArray interpolasi, MWArray pohon, MWArray 
                                    deteksiAir);

    MWArray visualisasiRadius();

    MWArray visualisasiRadius(MWArray nama);

    MWArray visualisasiRadius(MWArray nama, MWArray latitude);

    MWArray visualisasiRadius(MWArray nama, MWArray latitude, MWArray longitude);

    MWArray visualisasiRadius(MWArray nama, MWArray latitude, MWArray longitude, MWArray 
                              radius);

    MWArray visualisasiRadius(MWArray nama, MWArray latitude, MWArray longitude, MWArray 
                              radius, MWArray seleksi);

    MWArray visualisasiRadius(MWArray nama, MWArray latitude, MWArray longitude, MWArray 
                              radius, MWArray seleksi, MWArray interpolasi);

    MWArray visualisasiRadius(MWArray nama, MWArray latitude, MWArray longitude, MWArray 
                              radius, MWArray seleksi, MWArray interpolasi, MWArray 
                              pohon);

    MWArray visualisasiRadius(MWArray nama, MWArray latitude, MWArray longitude, MWArray 
                              radius, MWArray seleksi, MWArray interpolasi, MWArray 
                              pohon, MWArray deteksiAir);

    MWArray[] visualisasiRadius(int numArgsOut);

    MWArray[] visualisasiRadius(int numArgsOut, MWArray nama);

    MWArray[] visualisasiRadius(int numArgsOut, MWArray nama, MWArray latitude);

    MWArray[] visualisasiRadius(int numArgsOut, MWArray nama, MWArray latitude, MWArray 
                                longitude);

    MWArray[] visualisasiRadius(int numArgsOut, MWArray nama, MWArray latitude, MWArray 
                                longitude, MWArray radius);

    MWArray[] visualisasiRadius(int numArgsOut, MWArray nama, MWArray latitude, MWArray 
                                longitude, MWArray radius, MWArray seleksi);

    MWArray[] visualisasiRadius(int numArgsOut, MWArray nama, MWArray latitude, MWArray 
                                longitude, MWArray radius, MWArray seleksi, MWArray 
                                interpolasi);

    MWArray[] visualisasiRadius(int numArgsOut, MWArray nama, MWArray latitude, MWArray 
                                longitude, MWArray radius, MWArray seleksi, MWArray 
                                interpolasi, MWArray pohon);

    MWArray[] visualisasiRadius(int numArgsOut, MWArray nama, MWArray latitude, MWArray 
                                longitude, MWArray radius, MWArray seleksi, MWArray 
                                interpolasi, MWArray pohon, MWArray deteksiAir);

    #endregion Methods
  }
}
