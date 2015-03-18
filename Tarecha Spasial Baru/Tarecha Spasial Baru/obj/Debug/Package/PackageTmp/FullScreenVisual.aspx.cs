using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TarechaSpatial;
using MathWorks.MATLAB.NET.WebFigures;
using MathWorks.MATLAB.NET.Arrays;

namespace Tarecha_Spasial_Baru.Scripts
{
    public partial class FullScreenVisual : System.Web.UI.Page
    {
        InputRadius inputRadius = new InputRadius();
        InputDuaTitik inputDuaTitik = new InputDuaTitik();
       
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

                        inputRadius.title = Request.QueryString["nama"];
                        inputRadius.latitude = Request.QueryString["latitude"];
                        inputRadius.longitude = Request.QueryString["longitude"];
                        inputRadius.radius = Request.QueryString["radius"];
                        inputRadius.algoritma = Request.QueryString["algoritma"];
                        inputRadius.interpolasi = Request.QueryString["interpolasi"];
                        inputRadius.pohon = Request.QueryString["pohon"];
                        inputRadius.deteksiair = Request.QueryString["air"];
                        visualisasiRadius();
                    }

                    else
                    {

                        inputDuaTitik.title = Request.QueryString["nama"];
                        inputDuaTitik.latitude = Request.QueryString["latitude"];
                        inputDuaTitik.longitude = Request.QueryString["longitude"];
                        inputDuaTitik.latitude2 = Request.QueryString["latitude2"];
                        inputDuaTitik.longitude2 = Request.QueryString["longitude2"];
                        inputDuaTitik.algoritma = Request.QueryString["algoritma"];
                        inputDuaTitik.batasRadius = System.Configuration.ConfigurationManager.AppSettings["batasRadius"].ToString();
                        inputDuaTitik.interpolasi = Request.QueryString["interpolasi"];
                        inputDuaTitik.pohon = Request.QueryString["pohon"];
                        inputDuaTitik.deteksiair = Request.QueryString["air"];
                        visualisasiDuaTitik();
                    }


                }
            }
            else
            {

            }
        }

        private void visualisasiRadius()
        {
            try
            {
             
               
                inputRadius.batasRadius = System.Configuration.ConfigurationManager.AppSettings["batasRadius"].ToString();
                if (inputRadius.getRadius() > inputRadius.getBatasRadius()) //jika radius melebihi batas maka disesuaikan
                {
                    inputRadius.setRadius(inputRadius.batasRadius);
                 
                }
              

                TarechaSpatial.TarechaSpatial komponen = new TarechaSpatial.TarechaSpatial();
                komponen.bersihkanMemory();
                MWArray[] tampung = komponen.visualisasiRadius(12, inputRadius.getTitle(), inputRadius.getLatitude(), inputRadius.getLongitude(), inputRadius.getRadius(), inputRadius.getAlgoritma(), inputRadius.getInterpolasi(), inputRadius.getPohon(), inputRadius.getDeteksiAir());
                if (!tampung[0].IsEmpty)
                {
                    WebFigure fig = new WebFigure(tampung[0]);
                    WebFigureControl1.WebFigure = fig;
                
                }

            

            }
           
            catch (Exception)
            {
             

            }
        }

        private void visualisasiDuaTitik()
        {
            try
            {
              
              
   

                
                TarechaSpatial.TarechaSpatial komponen = new TarechaSpatial.TarechaSpatial();
                komponen.bersihkanMemory();
                MWArray[] tampung = komponen.visualisasiDuaInputan(13, inputDuaTitik.getTitle(), inputDuaTitik.getLatitude(), inputDuaTitik.getLongitude(), inputDuaTitik.getLatitude2(), inputDuaTitik.getLongitude2(), inputDuaTitik.getBatasRadius(), inputDuaTitik.getAlgoritma(), inputDuaTitik.getInterpolasi(), inputDuaTitik.getPohon(), inputDuaTitik.getDeteksiAir());
                if (!tampung[0].IsEmpty)
                {
                    WebFigure fig = new WebFigure(tampung[0]);
                    WebFigureControl1.WebFigure = fig;

                }
           




            }
            
            catch (Exception)
            {
               
            }
        }

      
      

    }
}