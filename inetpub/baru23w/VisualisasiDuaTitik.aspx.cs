using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TarechaSpatial;
using MathWorks.MATLAB.NET.WebFigures;
using MathWorks.MATLAB.NET.Arrays;
using System.Text;

namespace Tarecha_Spasial_Baru
{
    public partial class VisualisasiDuaTitik : System.Web.UI.Page
    {
        InputDuaTitik inputDuaTitik = new InputDuaTitik();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                String StatusInput1 = Request.QueryString["radius"];
                String StatusInput2 = Request.QueryString["latitude2"];
                if ((StatusInput1 != null) || (StatusInput2 != null))
                {

                    if (StatusInput2 != null)
                    {

                        txtTitle.Text = Request.QueryString["nama"];
                        txtLatitude.Text = Request.QueryString["latitude"];
                        txtLongitude.Text = Request.QueryString["longitude"];
                        txtLatitude2.Text = Request.QueryString["latitude2"];
                        txtLongitude2.Text = Request.QueryString["longitude2"];
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
            inputDuaTitik.title = txtTitle.Text;
            inputDuaTitik.latitude = txtLatitude.Text;
            inputDuaTitik.longitude = txtLongitude.Text;
            inputDuaTitik.latitude2 = txtLatitude2.Text;
            inputDuaTitik.longitude2 = txtLongitude2.Text;
            inputDuaTitik.algoritma = rbAlgoritma.SelectedValue;
            inputDuaTitik.batasRadius = System.Configuration.ConfigurationManager.AppSettings["batasRadius"].ToString();           
            inputDuaTitik.id_kategori = cmbListKategori.SelectedValue;
            inputDuaTitik.interpolasi = chkInterpolasi.Checked ? "1" : "0";
            inputDuaTitik.pohon = chkPohon.Checked ? "1" : "0";
            inputDuaTitik.deteksiair = chkDeteksiAir.Checked ? "1" : "0";
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
            url.Append(inputDuaTitik.getTitle());
            url.Append("&latitude=");
            url.Append(inputDuaTitik.getLatitude());
            url.Append("&longitude=");
            url.Append(inputDuaTitik.getLongitude());
            url.Append("&latitude2=");
            url.Append(inputDuaTitik.getLatitude2());
            url.Append("&longitude2=");
            url.Append(inputDuaTitik.getLongitude2());
            url.Append("&algoritma=");
            url.Append(inputDuaTitik.getAlgoritma());
            url.Append("&interpolasi=");
            url.Append(inputDuaTitik.getInterpolasi());
            url.Append("&pohon=");
            url.Append(inputDuaTitik.getPohon());
            url.Append("&air=");
            url.Append(inputDuaTitik.getDeteksiAir());
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
                MWArray[] tampung = komponen.visualisasiDuaInputan(15, inputDuaTitik.getTitle(), inputDuaTitik.getLatitude(), inputDuaTitik.getLongitude(), inputDuaTitik.getLatitude2(), inputDuaTitik.getLongitude2(), inputDuaTitik.getBatasRadius(), inputDuaTitik.getAlgoritma(),inputDuaTitik.getInterpolasi(),inputDuaTitik.getPohon(),inputDuaTitik.getDeteksiAir());
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
                if (tampung[11].ToString().Equals("1"))
                    lblWarning.Text = "Area visualisasi terlalu besar disesuaikan max " + inputDuaTitik.getBatasRadius() + " x " + inputDuaTitik.getBatasRadius();
                lblJumPohon.Text = tampung[12].ToString();
                lblWarning.Text = lblWarning.Text + " " + (tampung[13].ToString().Equals("[]") ? String.Empty : "Render software");
                lblLuasAir.Text = Convert.ToInt64(tampung[14].ToString()).ToString("N0");
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

        protected void btnSimpan_Click(object sender, ImageClickEventArgs e)
        {
            SimpanLokasi simpan = new SimpanLokasi();
            inisiasi();
            lblWarningSimpan.Text = simpan.simpan(inputDuaTitik);
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
            txtLatitude2.Text = TabelLokasi.SelectedRow.Cells[3].Text;
            txtLongitude2.Text = TabelLokasi.SelectedRow.Cells[4].Text;
            rbAlgoritma.SelectedValue = TabelLokasi.SelectedRow.Cells[5].Text.Trim();

        }
    }
}