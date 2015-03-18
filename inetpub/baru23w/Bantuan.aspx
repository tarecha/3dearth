<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true"
    CodeBehind="Bantuan.aspx.cs" Inherits="Tarecha_Spasial_Baru.Bantuan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
    Tutorial
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: large;
        }
        .style2
        {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
    <ul class="art-hmenu">
        <li><a href="Default.aspx">Beranda</a></li>
        <li><a href="VisualisasiRadius.aspx">Visualisasi Titik Tengah</a></li>
        <li><a href="VisualisasiDuaTitik.aspx">Visualisasi Titik Tepi</a></li>
        <%-- <li><a href="DaftarVisual.aspx">Daftar Visual</a></li>--%>
        <li><a href="ManageData.aspx">Manajemen Data</a></li>
        <li><a href="Bantuan.aspx" class=" active">Tutorial</a></li>
        <li><a href="Tentang.aspx">Tentang Peneliti</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="SheetContentPlaceHolder" runat="server">
    <br />
    <center>
        <p>
           <span class="style1">Tutorial Penggunaan Aplikasi </span>
        </p>
    </center>
    <br />
    <ol style="line-height: 20px; padding: 5px; margin: 5px;" align="justify">
        <li>Direkomendasikan menggunakan web browser Mozilla Firefox, klik <a href="http://www.mozilla.org/en-US/firefox/all/"
            target="_blank">Mozilla Firefox </a> untuk download Firefox terbaru di berbagai platform</li>
        <li>Visualisasi menggunakan 2 tipe input yaitu
            <br />
            <img alt="" src="images/Radius.jpg" /><img alt="" src="images/Dua%20Titik.jpg" /><br />
            &nbsp;&nbsp;&nbsp; A. Tipe titik tengah memvisualisasikan rupa bumi dengan input
            latitude, longitude, dan radius. Radius adalah jarak yang akan divisualisasikan
            dihitung dari titik pusat, dimana interval antar titik adalah 30 meter.
            <br />
            &nbsp;&nbsp;&nbsp; B. Tipe titik tepi memvisualisasikan rupa bumi dengan input dua
            buah titik tepi yaitu latitude1, longitude1, laltitude2, dan longitude2. Input Title
            adalah nama dari visualisasi.<br />
            &nbsp;&nbsp;&nbsp; Contoh input data visualisasi sebagai berikut :
            <br />
            &nbsp;&nbsp;&nbsp; Title : Gunung Semeru
            <br />
            &nbsp;&nbsp;&nbsp; Latiude : -8.107833
            <br />
            &nbsp;&nbsp;&nbsp; Longitude : 112.922306
            <br />
            &nbsp;&nbsp;&nbsp; Radius : 150
            <br />
            &nbsp;&nbsp;&nbsp; Format data yang digunakan <i>Decimal Degree</i>, jika format
            data Anda <i>DMS</i> maka konversikan terlebih dahulu <a href="images/Online Conversion - Decimal Degrees.htm"
                target="_blank">disini</a>.</li>
        <li>Input Algoritma yang digunakan pilih salah satu Round Half Down atau Brute Force.</li>
        <li>Fitur tambahan yang ada adalah interpolasi linear, dimana jika fitur ini diaktifkan
            dengan dicentang maka interval antar titik menjadi lebih detail yaitu interval dari
            30 meter menjadi 15 meter sehingga visual yang dihasilkan jauh lebih halus. 
            Visualisasi Pohon adalah fitur untuk memvisualisasikan pohon berdasarkan data 
            koordinat pohon yang ada. Deteksi wilayah air fitur untuk mendeteksi wilayah 
            perairan yang datar, dapat digunakan untuk memvisualisasikan wilayah perairan 
            seperti laut dan danau yang luas.</li>
        <li>Untuk mendapatkan <i>Current Position</i> dari perangkat tablet atau smartphone 
            yang memiliki GPS gunakan tombol 
            <img alt="" src="images/currentlocation_2.jpg" />.</li>
        <li>Visual normal dengan klik tombol
            <img alt="" src="images/normalkecik.png" />.</li>
        <li>Visual full screen dengan klik tombol
            <img alt="" src="images/full.png" width="16" />.</li>
        <li>Jika ada kesalahan input akan ada keterangan kesalahannya, dan tanda <span class="style2">
            *</span> disamping textbox berarti belum diisi.</li>
        <li>Titik
            <img alt="" src="images/pic%20utara%20png.png" height="12" width="12" />
            menunjukkan arah utara.
            <br />
            &nbsp;&nbsp;&nbsp; Titik
            <img alt="" src="images/pic%20tengah.png" height="12" width="12" />
            menunjukkan titik tengah terdekat latitude dan longitude pada sistem. &nbsp;&nbsp;</li>
        <li>Pada bagian samping kanan layar visualisasi akan muncul informasi visualisasi.</li>
        <li>Data input setelah visualisasi dapat disimpan kedalam database, pilih kategori terlebih
            dahulu lalu klik
            <img alt="" src="images/Save.png" height="16" width="16" />.</li>
        <li>Untuk melihat mengatur data yang sudah tersimpan ada pada <a href="ManageData.aspx"
            target="_blank">Manajemen Data</a>.</li>
        <li>Pada <a href="ManageData.aspx" target="_blank">Manajemen Data</a> Untuk menambahkan
            kategori input visualisasi ketika disimpan, ketik nama kategori di form isian pada
            tabel Kategori lalu klik
            <img alt="" src="images/add.png" height="16" width="16" />.</li>
        <li>Pada <a href="VisualisasiRadius.aspx" target="_blank">Visualisasi titik tengah</a>
            dan <a href="VisualisasiDuaTitik.aspx" target="_blank">Visualisasi titik tepi</a>
            untuk memvisualisasikan kembali data input yang telah disimpan, pada bagian bawah
            ada tabel bantuan untuk pengisian cepat klik
            <img alt="" src="images/normalkecik.png" height="16" width="16" />
            pada baris data yang diinginkan pada tabel Lokasi. Data tersebut akan langsung berpindah
            ke form inputan yang ada. Cara yang sama juga berlaku pada <a href="ManageData.aspx"
                target="_blank">Manajemen Data</a>.</li>
        <li>Visualisasi dari <a href="ManageData.aspx" target="_blank">Manajemen Data</a> jika muncul
            jendela dialog untuk memperbolehkan pop-up, klik allow. </li>
        <li>Untuk menghapus data input klik
            <img alt="" src="images/delete.png" height="16" width="16" />&nbsp;pada baris data
            yang diinginkan.</li>
        <li>Untuk mengurutkan data berdasarkan kolom, klik nama kolom tersebut.</li>
        <li>Tutorial dalam bentuk video.</li>
    </ol>
    <center>
     <video width="640" height="480" controls>
	<source src="video/tutor.ogg" type="video/ogg">
    <iframe scrolling="no" width="650" height="400" frameborder="0" src="video/tutorial.html">Iframe tidak supprot</iframe>
	
</video>
    </center>
    <br />
    <br />
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
