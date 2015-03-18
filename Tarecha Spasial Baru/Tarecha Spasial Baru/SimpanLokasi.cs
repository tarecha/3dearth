using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;

namespace Tarecha_Spasial_Baru
{
    public class SimpanLokasi
    {
        SqlConnection koneksi = null;
        SqlCommand perintah = null;
        public SimpanLokasi()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["tarecha_spasialConnectionString"].ToString();
            koneksi = new SqlConnection(connString);
            perintah = new SqlCommand();
            perintah.Connection = koneksi;

        }
        public String simpan(InputRadius objekRadius)
        {

            try
            {
                perintah.CommandText = "INSERT INTO tb_lokasi(nama, latitude, longitude, radius, algoritma, id_kategori) values (@nama, @latitude, @longitude, @radius, @algoritma, @id_kategori);";
                perintah.Prepare();
                perintah.Parameters.AddWithValue("@nama", objekRadius.title);
                perintah.Parameters.AddWithValue("@latitude", objekRadius.getLatitude());
                perintah.Parameters.AddWithValue("@longitude", objekRadius.getLongitude());
                perintah.Parameters.AddWithValue("@radius", objekRadius.getRadius());
                perintah.Parameters.AddWithValue("@algoritma", objekRadius.getAlgoritma());
                perintah.Parameters.AddWithValue("@id_kategori", objekRadius.getIdKategori());  
                koneksi.Open();
                perintah.Connection = koneksi;
                perintah.ExecuteNonQuery();
                koneksi.Close();

                return objekRadius.title.ToString() + " berhasil disimpan";

            }
            catch (SqlException kesalahan)
            {
                koneksi.Close();
                return objekRadius.title.ToString() +" gagal disimpan " + Environment.NewLine + kesalahan.Message;
                throw kesalahan;


            }

            catch (Exception kesalahan)
            {
                koneksi.Close();
                return objekRadius.title.ToString() + " gagal disimpan " + Environment.NewLine + kesalahan.Message;
                throw kesalahan;


            }

        }
        public String simpan(InputDuaTitik objekRadius)
        {
            try
            {
                perintah.CommandText = "INSERT INTO tb_lokasi(nama, latitude, longitude,  latitude2, longitude2, algoritma, id_kategori) values (@nama, @latitude, @longitude, @latitude2, @longitude2, @algoritma, @id_kategori);";
                perintah.Prepare();
                perintah.Parameters.AddWithValue("@nama", objekRadius.title);
                perintah.Parameters.AddWithValue("@latitude", objekRadius.getLatitude());
                perintah.Parameters.AddWithValue("@longitude", objekRadius.getLongitude());
                perintah.Parameters.AddWithValue("@latitude2", objekRadius.getLatitude2());
                perintah.Parameters.AddWithValue("@longitude2", objekRadius.getLongitude2());
                perintah.Parameters.AddWithValue("@algoritma", objekRadius.getAlgoritma());
                perintah.Parameters.AddWithValue("@id_kategori", objekRadius.id_kategori);

                koneksi.Open();
                perintah.ExecuteNonQuery();
                koneksi.Close();

                return objekRadius.title.ToString() + " berhasil disimpan";

            }
            catch (Exception kesalahan)
            {
                koneksi.Close();
                return objekRadius.title + " gagal disimpan " + Environment.NewLine + kesalahan.Message;
                throw kesalahan;
            }

        }
    }
}