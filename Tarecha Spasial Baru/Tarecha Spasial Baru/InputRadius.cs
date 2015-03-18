using System;
using System.Collections.Generic;
using System.Web;

namespace Tarecha_Spasial_Baru
{
    public class InputRadius : Input
    {
        public String radius;

        public int getRadius()
        {
            int radiusint = Convert.ToInt16(radius);
            return radiusint;
        }
        public void setRadius(String radius)
        {
            this.radius = radius;
        }
        
    }
}