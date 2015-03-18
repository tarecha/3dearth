using System;
using System.Collections.Generic;
using System.Web;

namespace Tarecha_Spasial_Baru
{
    public class Input 
    {
        public String title;
        public String algoritma;
        public String latitude;
        public String longitude;
        public String batasRadius;
        public String id_kategori;
        public String interpolasi;
        public String pohon;
        public String deteksiair;


        public String getTitle()
        {
            return title;
        }
        public String getAlgoritma()
        {
            return algoritma;
        }

        public Single getLatitude()
        {
            Single latitudeSingle = Convert.ToSingle(latitude);
            return latitudeSingle;
        }
        public Single getLongitude()
        {
            Single longitudeSingle = Convert.ToSingle(longitude);
            return longitudeSingle;
        }
        public int getBatasRadius()
        {
            int batasRadiusint = Convert.ToInt16(batasRadius);
            return batasRadiusint;
        }
        public int getIdKategori()
        {
            int id_kategoriint = Convert.ToInt16(id_kategori);
            return id_kategoriint;
        }
        public String getInterpolasi()
        {
            return interpolasi;
        }
        public String getPohon()
        {
            return pohon;
        }
        public String getDeteksiAir()
        {
            return deteksiair;
        }


        
    }
}