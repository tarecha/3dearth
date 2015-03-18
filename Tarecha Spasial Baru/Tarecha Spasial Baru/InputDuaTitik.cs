using System;
using System.Collections.Generic;
using System.Web;

namespace Tarecha_Spasial_Baru
{
    public class InputDuaTitik :Input
    {
        public String latitude2;
        public String longitude2;


        public Single getLatitude2()
        {
            Single latitude2Single = Convert.ToSingle(latitude2);
            return latitude2Single;
        }
        public Single getLongitude2()
        {
            Single longitude2Single = Convert.ToSingle(longitude2);
            return longitude2Single;
        }
      
    }
}