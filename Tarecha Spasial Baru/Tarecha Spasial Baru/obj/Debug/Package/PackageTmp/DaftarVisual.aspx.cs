using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace Tarecha_Spasial_Baru
{
    public partial class DaftarVisual : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private Boolean IsNumeric(string stringToTest)
        {
            int result;
            return int.TryParse(stringToTest, out result);
        }
        protected void TabelLokasi_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                String nama = TabelLokasi.SelectedRow.Cells[0].Text;
                String latitude = TabelLokasi.SelectedRow.Cells[1].Text;
                String longitude = TabelLokasi.SelectedRow.Cells[2].Text;
                String latitude2 = TabelLokasi.SelectedRow.Cells[3].Text;
                String longitude2 = TabelLokasi.SelectedRow.Cells[4].Text;
                String radius = TabelLokasi.SelectedRow.Cells[5].Text;
                String algoritma = TabelLokasi.SelectedRow.Cells[6].Text;
                StringBuilder url = new StringBuilder();
                StringBuilder script = new StringBuilder();
                String tipe;



                if (IsNumeric(radius))
                    tipe = "VisualisasiRadius.aspx?";
                else
                    tipe = "VisualisasiDuaTitik.aspx?";

                script.Append("<script>");
                script.Append("window.open(\"");
                url.Append(tipe);
                url.Append("nama=");
                url.Append(nama);
                url.Append("&latitude=");
                url.Append(latitude);
                url.Append("&longitude=");
                url.Append(longitude);
                url.Append("&latitude2=");
                url.Append(latitude2);
                url.Append("&longitude2=");
                url.Append(longitude2);
                url.Append("&radius=");
                url.Append(radius);
                url.Append("&algoritma=");
                url.Append(algoritma);
                script.Append(url.ToString());
                script.Append("\", target=\"_blank\")");
                script.Append("</script>");


                Response.Write(script.ToString());

                lblWarningLokasi.Text = String.Empty;

            }
            catch (Exception)
            {
                
            }
        }

       
    }
}