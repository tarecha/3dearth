using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using TarechaSpatial;
using MathWorks.MATLAB.NET.WebFigures;
using MathWorks.MATLAB.NET.Arrays;
namespace Tarecha_Spasial_Baru
{
    public partial class VisualisasiRadius : System.Web.UI.Page
    {
        InputRadius inputRadius = new InputRadius();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                String StatusInput1 = Request.QueryString["radius"];
                String StatusInput2 = Request.QueryString["latitude2"];
                if ((StatusInput1 != null) || (StatusInput2 != null))
                {

                    if (StatusInput1 != null)
                    {

                        txtTitle.Text = Request.QueryString["nama"];
                        txtLatitude.Text = Request.QueryString["latitude"];
                        txtLongitude.Text = Request.QueryString["longitude"];
                        txtRadius.Text = Request.QueryString["radius"];
                        rbAlgoritma.SelectedValue = Request.QueryString["algoritma"];


                    }




                }
            }
        }

      

        protected void btnVisualisasiFull_Click(object sender, ImageClickEventArgs e)
        {
            visualFull();
        }
        private void inisiasi()
        {
            inputRadius.title = txtTitle.Text;
            inputRadius.latitude = txtLatitude.Text;
            inputRadius.longitude = txtLongitude.Text;
            inputRadius.radius = txtRadius.Text;
            inputRadius.algoritma = rbAlgoritma.SelectedValue;
            inputRadius.batasRadius = System.Configuration.ConfigurationManager.AppSettings["batasRadius"].ToString();
            inputRadius.id_kategori = cmbListKategori.SelectedValue;
            if (inputRadius.getRadius() > inputRadius.getBatasRadius()) //jika radius melebihi batas maka disesuaikan
            {
                inputRadius.setRadius(inputRadius.batasRadius);

            }
            inputRadius.interpolasi = chkInterpolasi.Checked ? "1" : "0";
            inputRadius.pohon = chkPohon.Checked ? "1" : "0";
            inputRadius.deteksiair = chkDeteksiAir.Checked ? "1":"0";
        }
        private void visualFull()
        {
            inisiasi();
            StringBuilder url = new StringBuilder();
            StringBuilder script = new StringBuilder();

            script.Append("<script>");
            script.Append("window.open(\"");
            url.Append("FullScreenVisual.aspx?");
            url.Append("nama=");
            url.Append(inputRadius.getTitle());
            url.Append("&latitude=");
            url.Append(inputRadius.getLatitude());
            url.Append("&longitude=");
            url.Append(inputRadius.getLongitude());
            url.Append("&radius=");
            url.Append(inputRadius.getRadius());
            url.Append("&algoritma=");
            url.Append(inputRadius.getAlgoritma());
            url.Append("&interpolasi=");
            url.Append(inputRadius.getInterpolasi());
            url.Append("&pohon=");
            url.Append(inputRadius.getPohon());
            url.Append("&air=");
            url.Append(inputRadius.getDeteksiAir());
            script.Append(url.ToString());
            script.Append("\", target=\"_blank\")");
            script.Append("</script>");


            Response.Write(script.ToString());
        }

        protected void btnVisualisasiNormal_Click(object sender, ImageClickEventArgs e)
        {
            visualNormal();

        }
        private void visualNormal()
        {
            try
            {

                inisiasi();
                TarechaSpatial.TarechaSpatial komponen = new TarechaSpatial.TarechaSpatial();
                komponen.bersihkanMemory();
                MWArray[] tampung = komponen.visualisasiRadius(14, inputRadius.getTitle(), inputRadius.getLatitude(), inputRadius.getLongitude(), inputRadius.getRadius(), inputRadius.getAlgoritma(), inputRadius.getInterpolasi(), inputRadius.getPohon(), inputRadius.getDeteksiAir());
                if (!tampung[0].IsEmpty)
                {
                    WebFigure fig = new WebFigure(tampung[0]);
                    WebFigureControl1.WebFigure = fig;
                    lblWarning.Text = String.Empty;

                }
            
                lblAlgoritma.Text = rbAlgoritma.SelectedItem.ToString();
                lblWaktu.Text = Convert.ToDouble(tampung[1].ToString()).ToString("F4");
                lblLuas.Text = Convert.ToInt64(tampung[2].ToString()).ToString("N0");
                lblBarisKoma.Text = Convert.ToDouble(tampung[3].ToString()).ToString("F3");
                lblBaris.Text = tampung[4].ToString();
                lblKolomKoma.Text = Convert.ToDouble(tampung[5].ToString()).ToString("F3");
                lblKolom.Text = tampung[6].ToString();
                lblZmax.Text = tampung[7].ToString();
                lblZmin.Text = tampung[8].ToString();
                lblZtitik.Text = tampung[9].ToString();
                lblInfomemory.Text = tampung[10].ToString();
                lblJumPohon.Text = tampung[11].ToString();
                lblWarning.Text = tampung[12].ToString().Equals("[]")?String.Empty:"Render software";
                lblLuasAir.Text = Convert.ToInt64(tampung[13].ToString()).ToString("N0");

            }
            catch (ExecutionEngineException a)
            {
                lblWarning.Text = a.Message;

            }
            catch (InvalidOperationException a)
            {
                lblWarning.Text = a.Message;

            }
            catch (Exception a)
            {
                lblWarning.Text = a.Message;

            }
        }

        protected void txtRadius_Load(object sender, EventArgs e)
        {
            valLengthRadius.MaximumValue = System.Configuration.ConfigurationManager.AppSettings["batasRadius"].ToString();
            valLengthRadius.ErrorMessage = "Isi Radius 1 s/d " + valLengthRadius.MaximumValue;
        }

        protected void btnSimpan_Click(object sender, ImageClickEventArgs e)
        {
            SimpanLokasi simpan = new SimpanLokasi();
            inisiasi();
            lblWarningSimpan.Text = simpan.simpan(inputRadius);
            SqlDataSourceLokasi.DataBind();
            TabelLokasi.DataBind();
           
        }

        protected void TabelLokasi_SelectedIndexChanged(object sender, EventArgs e)
        {
            pindahKeTable();
        }
        private void pindahKeTable()
        {
                txtTitle.Text = TabelLokasi.SelectedRow.Cells[0].Text;
                txtLatitude.Text = TabelLokasi.SelectedRow.Cells[1].Text;
                txtLongitude.Text = TabelLokasi.SelectedRow.Cells[2].Text;
                txtRadius.Text = TabelLokasi.SelectedRow.Cells[3].Text;
                rbAlgoritma.SelectedValue = TabelLokasi.SelectedRow.Cells[4].Text.Trim();
               
        }
  

       
    }
}