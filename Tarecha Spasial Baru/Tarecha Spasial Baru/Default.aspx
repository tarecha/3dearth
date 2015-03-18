<%@ Page Language="C#" MasterPageFile="~/design/MasterPage.master" ValidateRequest="false"
    AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<%@ Register Assembly="WebFiguresService, Version=2.12.1.0, Culture=neutral, PublicKeyToken=e1d84a0da19db86f"
    Namespace="MathWorks.MATLAB.NET.WebFigures.Service" TagPrefix="cc1" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="DefaultMenu.ascx" %>
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %>
<%@ Register TagPrefix="art" TagName="DefaultSidebar1" Src="DefaultSidebar1.ascx" %>
<%@ Register TagPrefix="art" TagName="DefaultSidebar2" Src="DefaultSidebar2.ascx" %>
<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" runat="Server">
    
</asp:Content>
<asp:Content ID="MenuContent" ContentPlaceHolderID="MenuContentPlaceHolder" runat="Server">
    <ul class="art-hmenu">
        <li><a href="Default.aspx" class=" active">Beranda</a></li>
        <li><a href="VisualisasiRadius.aspx">Visualisasi Titik Tengah</a></li>
        <li><a href="VisualisasiDuaTitik.aspx">Visualisasi Titik Tepi</a></li>
        <%-- <li><a href="DaftarVisual.aspx">Daftar Visual</a></li>--%>
        <li><a href="ManageData.aspx">Manajemen Data</a></li>
        <li><a href="Bantuan.aspx">Tutorial</a></li>
        <li><a href="Tentang.aspx">Tentang Peneliti</a></li>
    </ul>
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
        <br />
      
           
        <center>
        <div>
                Jumlah Pengunjung
                <br />
                <!-- Start counter code -->
                <a href="http://www.starryeyez.info/" target="blank" valign="middle">
                    <img alt="Website counter"  valign="middle" hspace="0" vspace="0" border="0" src="http://redhotcounters.com/7133441-E6A5836C622971CE4FEC3344AD3467AB/counter.img?theme=32&digits=7&siteId=7" />
                </a>
                
                <!-- End counter code -->
            </div>
        </center>
    </div>
</asp:Content>
<asp:Content ID="SideBar2" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" runat="Server">
    <div class="flash" align="center">
        <br />
        <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0"
            width="160" height="600" id="tech" align="middle">
            <param name="movie" value="images/skycraper.swf" />
            <param name="quality" value="high" />
            <param name="allowFullScreen" value="true" />
            <param name="wmode" value="transparent" />
            <param name="allowScriptAccess" value="always" />
            <param name="_flashcreator" value="http://www.photo-flash-maker.com" />
            <param name="_flashhost" value="http://www.go2album.com" />
            <embed src="images/skycraper.swf" width="160" height="600" quality="high" allowfullscreen="true"
                wmode="transparent" allowscriptaccess="always" name="tech" align="middle" type="application/x-shockwave-flash"
                pluginspage="http://www.macromedia.com/go/getflashplayer" />
        </object>
    </div>
 
    
            
</asp:Content>
<asp:Content ID="SheetContent" ContentPlaceHolderID="SheetContentPlaceHolder" runat="Server">
    <br />
    
    <center>
        <img alt="3D Earth" src="images/logokecil.png" /><br />
        <h3 style="line-height: 20px; padding: 5px; margin: 5px;">
            Visualisasi 3D Rupa Bumi Berbasis Data GDEM ASTER 30 Meter</h3>
    </center>
        
    <br />
    <p style="line-height: 20px; padding: 5px; margin: 5px;" align="justify">
        Selamat datang di visualisasi 3D rupa bumi berbasis data GDEM ASTER 30 meter yang
        merupakan skripsi Mochamad Agung Tarecha NIM 09650135 di Jursan Teknik Informatika
        UIN Maulana Malik Ibrahim Malang. Anda dapat menggunakan visualisasi 3D ini untuk
        berbagai keperluan seperti perencanaan pembangunan, pemanfaatan sumber daya alam,
        militer, dan strategi penanggulangan bencana. Salah satu contoh adalah strategi
        penanggulangan bencana pesawat Sukhoi Super Jet 100 yang menabrak tebing Gunung
        Salak pada tanggal 9 Mei 2012, informasi mengenai kontur Gunung Salak diperlukan
        oleh Tim SAR guna perencanaan evakuasi korban pesawat Sukhoi Super Jet 100 di tebing
        gunung yang terjal. Bagaimana cara mengevakuasi korban pesawat tersebut dapat direncanakan
        dengan baik ketika mengetahui lebih detail kontur Gunung Salak secara 3D daripada
        kontur secara 2D menggunakan <a href="images/Peta topografi - Wikipedia bahasa Indonesia, ensiklopedia bebas.htm"
            target="_blank">peta topografi</a> pada umumnya. Dengan aplikasi ini diharapkan&nbsp;
        evakuasi dapat direncanakan secara matang dan dapat <a href="images/Lokasi%20Bangkai%20Sukhoi%20Beda%20dengan%20Titik%20Koordinat%20_%20nasional%20_%20Tempo.co.htm"
            target="_blank">meminimalkan kesalahan</a>. Dan masih banyak lagi manfaat yang
        bisa diperoleh dari visualisasi 3D ini dan semoga hasil dari penelitian ini memberikan
        kontribusi bagi Bangsa Indonesia tercinta. Aplikasi visualisasi ini menggunakan
        <em>GLOBAL DIGITAL ELEVATION MODEL (GDEM) ADVANCED SPACEBORNE THERMAL EMISSION AND REFLECTION
            RADIOMETER (ASTER)&nbsp; VERSION 2</em> yang merupakan produk dari METI dan
        NASA yang dirilis pada 17 Oktober 2011. Penelitian ini telah dipublikasikan pada
        Seminar Nasional Matematika dan Aplikasinya yang diselenggarakan oleh Departemen
        Matematika Fakultas Sains dan Teknologi Universitas Airlangga Suarabaya pada 21
        September 2013, paper publikasi ilmiah dapat diunduh di sini <a href="images/Seminar Nasional Matematika dan Apikasinya - Mochamad Agung Tarecha - Unair.pdf"
            target="_blank">Seminar Nasional Matematika dan Apikasinya - Mochamad Agung Tarecha
            - Unair.pdf</a><br />
        <br />
    </p>
    <center>
        <img alt="" src="images/pesawat%20sukhoi%20superjet%20100.jpg" align="middle" />
        <img alt="" src="images/SAR-DLM.jpg" align="middle" /><br />
        <br />
        <img alt="" src="images/200.jpg" align="middle" />&nbsp;
    </center>
    <br />
    <p style="line-height: 20px; padding: 5px; margin: 5px;" align="justify">
        Keterangan :<br />
        Gambar kiri tebing terjal lokasi pesawat Sukhoi Super Jet 100 jatuh
        <br />
        Gambar kanan tim SAR merencanakan strategi evakuasi<br />
        Gambar bawah Visualisasi perkiraan lokasi pesawat Sukhoi Super Jet 100 jatuh (titik
        berwarna hitam)<br />
        Sumber : <a href="images/sukhoi-superjet-100-jatuh-di-gunung.html" target="_blank">Sukhoi
            Superjet 100 Jatuh Di Gunung Salak</a>
    </p>
    <br />
    <p>
        <center>
            <div id="fb-root">
            </div>
            <script>                (function (d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) return;
                    js = d.createElement(s); js.id = id;
                    js.src = "//connect.facebook.net/id_ID/all.js#xfbml=1";
                    fjs.parentNode.insertBefore(js, fjs);
                } (document, 'script', 'facebook-jssdk'));</script>
            
            <div class="fb-like" data-href="<%=ConfigurationManager.AppSettings["hostNameFB"].ToString()%>" data-layout="standard"
                data-action="like" data-show-faces="true" data-share="true">
            </div>
            <div class="fb-send" data-href="<%=ConfigurationManager.AppSettings["hostNameFB"].ToString()%>" data-colorscheme="light">
            </div>
            <br />
            <div class="fb-comments" data-href="<%=ConfigurationManager.AppSettings["hostNameFB"].ToString()%>" data-numposts="10"
                data-colorscheme="light">
            </div>
        </center>
    </p>
</asp:Content>
