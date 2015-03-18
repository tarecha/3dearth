<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true"
    CodeBehind="Tentang.aspx.cs" Inherits="Tarecha_Spasial_Baru.Tentang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
    Tentang Peneliti
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
     <ul class="art-hmenu">
        <li><a href="Default.aspx" >Beranda</a></li>
        <li><a href="VisualisasiRadius.aspx">Visualisasi Titik Tengah</a></li>
        <li><a href="VisualisasiDuaTitik.aspx">Visualisasi Titik Tepi</a></li>
       <%-- <li><a href="DaftarVisual.aspx">Daftar Visual</a></li>--%>
        <li><a href="ManageData.aspx">Manajemen Data</a></li>
        <li><a href="Bantuan.aspx">Tutorial</a></li>
        <li><a href="Tentang.aspx" class=" active">Tentang Peneliti</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="SheetContentPlaceHolder" runat="server">
    <br />
    <center>
        <span class="style1">Tentang Peneliti</span></center>
    <br />
    <div style="float: left;">
        <asp:Image ID="Image1" runat="server" BorderColor="#0033CC" BorderStyle="Ridge" 
            BorderWidth="10px" ImageUrl="~/images/tarecha.jpg" />
        <br />
           <br />
                <asp:Image ID="Image2" runat="server" BorderColor="#0033CC" 
    BorderStyle="Ridge" BorderWidth="10px" ImageUrl="~/images/agungtarecha.JPG" />
       
     </div>
    <div>
        <p style="margin-left: 230px; margin-right: 10px;line-height: 20px; text-align:justify;">
            Mochamad Agung Tarecha lahir 21 Februari 1991 di Kota Malang, anak pertama dari
            dua bersaudara. Memiliki seorang adik laki-laki yang bernama Rachmad Imam Tarecha
            yang juga kuliah di Jurusan Teknik Informatikan UIN Maulana Malik Ibrahim Malang.
            Menyelesaikan Sekolah Menengah Kejuruan Telekomunikasi Sandhy Putra Malang jurusan
            Rekayasa Perangkat Lunak pada tahun 2009. Masuk UIN Maulana Malik Ibrahim Malang
            pada 2009. Bidang keahlian yang diminati Robotik dan .Net Technology.<br />
        </p>
        <p style="margin-left: 240px; margin-right: 10px;line-height: 20px; text-align:justify;">
            &nbsp;</p>
        <p style="margin-left: 240px; margin-right: 10px;line-height: 20px; text-align:justify;">
            Memiliki hobi naik gunung, mendaki, traveling, memancing waktu kecil. 
            Memiliki cita-cita ingin jadi Ilmuan yang bisa memberikan kontribusi untuk 
            Bangsa Indonesia tercinta. Dijuluki Kambing Gunung karena senang sekali mendaki 
            gunung, penelitian ini juga bagian manifestasi dari hobi mendaki gunung.
            Hasil penelitian ini diharapkan dapat dimanfaatkan oleh banyak pihak dan memberikan
            kontribusi bagi Bangsa Indonesia tercinta. Bila ada investor yang tertarik untuk 
            mengembangkan penelitian ini, peneliti dengan senang hati untuk bekerja sama 
            Demi Indonesia tercinta. </p>
        <br />
    <br /> 
        <p style="margin-left: 250px; margin-right: 10px;line-height: 20px; text-align:justify;">
         <asp:Image ID="Image3" runat="server" BorderColor="#0033CC" 
    BorderStyle="Ridge" BorderWidth="10px" ImageUrl="~/images/ladang bunga.JPG" />
        </p>
        <br />
             <p style="margin-left: 250px; margin-right: 10px;line-height: 20px; text-align:justify;">
                 Home page : <a href="http://tarecha.wordpress.com/" target="_blank">http://tarecha.wordpress.com/</a>
            <br />
                 Email : <a href="mailto:agung.tarecha@gmail.com">agung.tarecha@gmail.com</a>
                 <br />
                 Curiculum Vitae : <a href="images/Curiculum Vitae Lengkap.pdf" target="_blank">Curiculum Vitae Lengkap.pdf</a> </p>
    </div>
    <div style="clear: both;">
    </div>
</asp:Content>
<asp:Content ID="SideBar1" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" runat="Server">
<div align="center">
<br />
    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0"
        width="160" height="600">
        <param name="movie" value="images/flashvortex.swf" />
        <param name="quality" value="best" />
        <param name="menu" value="true" />
        <param name="allowScriptAccess" value="sameDomain" />
        <embed src="images/flashvortex.swf" quality="best" menu="true" width="160" height="600"
            type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"
            allowscriptaccess="sameDomain" />
    </object>
    </div>
</asp:Content>
<asp:Content ID="SideBar2" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" runat="Server">
    <div class="flash" align="center">
    <br />
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="160" height="600" id="tech" align="middle" >
        <param name="movie" value="images/skycraper.swf" />
        <param name="quality" value="high" />
        <param name="allowFullScreen" value="true" />
        <param name="wmode" value="transparent" />
        <param name="allowScriptAccess" value="always" />
        <param name="_flashcreator" value="http://www.photo-flash-maker.com" />
        <param name="_flashhost" value="http://www.go2album.com" />
        <embed src="images/skycraper.swf" width="160" height="600" quality="high" allowFullScreen="true" wmode="transparent" allowScriptAccess="always" name="tech" align="middle" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
      </object>
    </div>

</asp:Content>
