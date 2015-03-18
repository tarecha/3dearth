<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true"
    CodeBehind="VisualisasiDuaTitik.aspx.cs" Inherits="Tarecha_Spasial_Baru.VisualisasiDuaTitik" %>

<%@ Register Assembly="WebFiguresService, Version=2.12.1.0, Culture=neutral, PublicKeyToken=e1d84a0da19db86f"
    Namespace="MathWorks.MATLAB.NET.WebFigures.Service" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
     Visualisasi Titik Tepi
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
     <ul class="art-hmenu">
        <li><a href="Default.aspx" >Beranda</a></li>
        <li><a href="VisualisasiRadius.aspx">Visualisasi Titik Tengah</a></li>
        <li><a href="VisualisasiDuaTitik.aspx" class=" active">Visualisasi Titik Tepi</a></li>
       <%-- <li><a href="DaftarVisual.aspx">Daftar Visual</a></li>--%>
        <li><a href="ManageData.aspx">Manajemen Data</a></li>
        <li><a href="Bantuan.aspx">Tutorial</a></li>
        <li><a href="Tentang.aspx">Tentang Peneliti</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" runat="server">
    <p style="line-height: 25px; padding: 5px; margin: 5px;">
        Title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;:
        <asp:TextBox ID="txtTitle" runat="server" Width="90px"></asp:TextBox><asp:RequiredFieldValidator
            ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtTitle"
            SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        Latitude1&nbsp;&nbsp;&nbsp;:
        <asp:TextBox ID="txtLatitude" runat="server" Width="90px"></asp:TextBox><asp:RequiredFieldValidator
            ID="valLatitudeReqRadius" runat="server" ControlToValidate="txtLatitude" ErrorMessage="*"
            SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        Longitude1&nbsp;:
        <asp:TextBox ID="txtLongitude" runat="server" Width="90px"></asp:TextBox><asp:RequiredFieldValidator
            ID="valLongitudeReqRadius" runat="server" ControlToValidate="txtLongitude" ErrorMessage="*"
            SetFocusOnError="True"></asp:RequiredFieldValidator><br />
        Latitude2&nbsp;&nbsp;&nbsp;:
        <asp:TextBox ID="txtLatitude2" runat="server" Width="90px"></asp:TextBox><asp:RequiredFieldValidator
            ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLatitude2"
            ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        Longitude2&nbsp;:
        <asp:TextBox ID="txtLongitude2" runat="server" Width="90px"></asp:TextBox><asp:RequiredFieldValidator
            ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLongitude2"
            ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator><br />
       Algoritma :
        <br />
        </p>
        <div>
        <asp:RadioButtonList ID="rbAlgoritma" runat="server">
            <asp:ListItem Selected="True" Value="RHD">Round Half Down</asp:ListItem>
            <asp:ListItem Value="BF">Brute Force Closest-Pair</asp:ListItem>
        </asp:RadioButtonList>
        </div>
         <p style="line-height: 25px; padding: 5px; margin: 5px;">
        
        Fitur tambahan:
        <br />
         <asp:CheckBox ID="chkPohon" runat="server" Text="Pohon" />
       <br />
        <asp:CheckBox ID="chkInterpolasi" runat="server" Text="Interpolasi linier" />
       <br />
        <asp:CheckBox ID="chkDeteksiAir" runat="server" Text="Deteksi wilayah air (beta)" />
       <br />
    </p>
    <center>
        <asp:ImageButton ID="btnVisualisasiNormal" runat="server" ImageUrl="~/images/normal.png"
            ToolTip="Visualisasi normal" OnClick="btnVisualisasiNormal_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="btnVisualisasiFull" runat="server" ImageUrl="~/images/full.png"
            ToolTip="Visualisasi full screen" OnClick="btnVisualisasiFull_Click" />
    </center>
    <br />
    <p style="line-height: 25px; padding: 5px; margin: 5px;">
        <asp:RangeValidator ID="valLatitudeRadius" runat="server" ControlToValidate="txtLatitude"
            ErrorMessage="Isi Latitude1 83(N) s/d -83(S) " MaximumValue="82.9997" MinimumValue="-82.9997"
            SetFocusOnError="True" Type="Double"></asp:RangeValidator><br />
        <asp:RangeValidator ID="valLongitudeRadius" runat="server" ControlToValidate="txtLongitude"
            ErrorMessage="Isi Longitude1 180(E) s/d -180(W)" MaximumValue="179.9997" MinimumValue="-179.9997"
            SetFocusOnError="True" Type="Double"></asp:RangeValidator><br />
        <asp:RangeValidator ID="valLatitudeRadius2" runat="server" ControlToValidate="txtLatitude2"
            ErrorMessage="Isi Latitude2 83(N) s/d -83(S) " MaximumValue="82.9997" MinimumValue="-82.9997"
            SetFocusOnError="True" Type="Double"></asp:RangeValidator><br />
        <asp:RangeValidator ID="valLongitudeRadius2" runat="server" ControlToValidate="txtLongitude2"
            ErrorMessage="Isi Longitude2 180(E) s/d -180(W)" MaximumValue="179.9997" MinimumValue="-179.9997"
            SetFocusOnError="True" Type="Double"></asp:RangeValidator>
   
        <br />
         <asp:CompareValidator ID="valCompareLatitudeDuatitik" runat="server" 
                ErrorMessage="Latitude1 harus &gt; Latitude2" 
                ControlToCompare="txtLatitude" ControlToValidate="txtLatitude2" 
                Operator="LessThan" Type="Double"></asp:CompareValidator>
            <br />
            <asp:CompareValidator ID="valCompareLongitudeDuatitik" runat="server" 
                ErrorMessage="Longitude2 harus &gt; Longitude1" 
                ControlToCompare="txtLongitude" ControlToValidate="txtLongitude2" 
                Operator="GreaterThan" Type="Double"></asp:CompareValidator>
        <asp:Label ID="lblWarning" runat="server" ForeColor="Red"></asp:Label>

    </p>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="SheetContentPlaceHolder" runat="server">
    <div>
        <p style="margin-top: 0px; margin-bottom: 0px; margin-right: 40px; margin-left: 0px;">
            <cc1:WebFigureControl ID="WebFigureControl1" runat="server" Width="100%" Height="548px"
                EnableTheming="True" BorderStyle="Ridge" BorderWidth="20px" BorderColor="#99CCFF" />
        </p>
    </div>
    <br />
    <div>
        <ul class="art-hmenu" style="margin-top: 20px; margin-bottom: 0px; margin-right: 20px;
            margin-left: 15px;">
            <li><a class=" active">Bantuan</a></li></ul>
    </div>
    <div class="cleared">
    </div>
    <div style="margin-top: 0px; margin-bottom: 20px; margin-right: 20px; margin-left: 20px;">
        <asp:GridView ID="TabelLokasi" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_lokasi,id_kategori1"
            DataSourceID="SqlDataSourceLokasi" EnableModelValidation="True" ForeColor="Black"
            Width="100%" OnSelectedIndexChanged="TabelLokasi_SelectedIndexChanged" HorizontalAlign="Center"
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="5px"
            CellSpacing="2" 
            Caption="Gunakan data pada tabel dibawah untuk bantuan pengisian cepat">
           <Columns>
            <asp:BoundField DataField="nama" HeaderText="Nama" SortExpression="nama" >
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="latitude" HeaderText="Latitude 1" 
                SortExpression="latitude" >
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="longitude" HeaderText="Longitude 1" 
                SortExpression="longitude" >
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="latitude2" HeaderText="Latitude 2" 
                SortExpression="latitude2" >
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="longitude2" HeaderText="Longitude 2" 
                SortExpression="longitude2" >
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="algoritma" HeaderText="Algoritma" 
                SortExpression="algoritma" >
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="kategori" HeaderText="Kategori" 
                SortExpression="kategori" >
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:CommandField ShowSelectButton="True" ButtonType="Image"
                CausesValidation="False" DeleteImageUrl="~/images/delete.png" HeaderImageUrl="~/images/normal sedang.png"
                SelectImageUrl="~/images/normalkecik.png" >
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:CommandField>
        </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Width="100px" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSourceLokasi" runat="server" ConnectionString="<%$ ConnectionStrings:tarecha_spasialConnectionString %>"
            DeleteCommand="DELETE FROM [tb_lokasi] WHERE [id_lokasi] = @original_id_lokasi AND [nama] = @original_nama AND [latitude] = @original_latitude AND [longitude] = @original_longitude AND (([latitude2] = @original_latitude2) OR ([latitude2] IS NULL AND @original_latitude2 IS NULL)) AND (([longitude2] = @original_longitude2) OR ([longitude2] IS NULL AND @original_longitude2 IS NULL)) AND (([radius] = @original_radius) OR ([radius] IS NULL AND @original_radius IS NULL)) AND [algoritma] = @original_algoritma"
            OldValuesParameterFormatString="original_{0}" SelectCommand="select * from tb_lokasi, tb_kategori where tb_kategori.id_kategori=tb_lokasi.id_kategori AND tb_lokasi.radius is null order by tb_kategori.kategori, tb_lokasi.algoritma "
            ConflictDetection="CompareAllValues" InsertCommand="INSERT INTO [tb_lokasi] ([nama], [latitude], [longitude], [latitude2], [longitude2], [radius], [algoritma], [id_kategori]) VALUES (@nama, @latitude, @longitude, @latitude2, @longitude2, @radius, @algoritma, @id_kategori)"
            UpdateCommand="UPDATE [tb_lokasi] SET [nama] = @nama, [latitude] = @latitude, [longitude] = @longitude, [latitude2] = @latitude2, [longitude2] = @longitude2, [radius] = @radius, [algoritma] = @algoritma, [id_kategori] = @id_kategori WHERE [id_lokasi] = @original_id_lokasi AND [nama] = @original_nama AND [latitude] = @original_latitude AND [longitude] = @original_longitude AND (([latitude2] = @original_latitude2) OR ([latitude2] IS NULL AND @original_latitude2 IS NULL)) AND (([longitude2] = @original_longitude2) OR ([longitude2] IS NULL AND @original_longitude2 IS NULL)) AND (([radius] = @original_radius) OR ([radius] IS NULL AND @original_radius IS NULL)) AND [algoritma] = @original_algoritma AND [id_kategori] = @original_id_kategori">
            <DeleteParameters>
                <asp:Parameter Name="original_id_lokasi" Type="Int32" />
                <asp:Parameter Name="original_nama" Type="String" />
                <asp:Parameter Name="original_latitude" Type="Single" />
                <asp:Parameter Name="original_longitude" Type="Single" />
                <asp:Parameter Name="original_latitude2" Type="Single" />
                <asp:Parameter Name="original_longitude2" Type="Single" />
                <asp:Parameter Name="original_radius" Type="Int32" />
                <asp:Parameter Name="original_algoritma" Type="String" />
                <asp:Parameter Name="original_id_kategori" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nama" Type="String" />
                <asp:Parameter Name="latitude" Type="Single" />
                <asp:Parameter Name="longitude" Type="Single" />
                <asp:Parameter Name="latitude2" Type="Single" />
                <asp:Parameter Name="longitude2" Type="Single" />
                <asp:Parameter Name="radius" Type="Int32" />
                <asp:Parameter Name="algoritma" Type="String" />
                <asp:Parameter Name="id_kategori" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nama" Type="String" />
                <asp:Parameter Name="latitude" Type="Single" />
                <asp:Parameter Name="longitude" Type="Single" />
                <asp:Parameter Name="latitude2" Type="Single" />
                <asp:Parameter Name="longitude2" Type="Single" />
                <asp:Parameter Name="radius" Type="Int32" />
                <asp:Parameter Name="algoritma" Type="String" />
                <asp:Parameter Name="id_kategori" Type="Int32" />
                <asp:Parameter Name="original_id_lokasi" Type="Int32" />
                <asp:Parameter Name="original_nama" Type="String" />
                <asp:Parameter Name="original_latitude" Type="Single" />
                <asp:Parameter Name="original_longitude" Type="Single" />
                <asp:Parameter Name="original_latitude2" Type="Single" />
                <asp:Parameter Name="original_longitude2" Type="Single" />
                <asp:Parameter Name="original_radius" Type="Int32" />
                <asp:Parameter Name="original_algoritma" Type="String" />
                <asp:Parameter Name="original_id_kategori" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" runat="server">
    <p style="line-height: 25px; padding: 2px; margin: 2px;">
        <img alt="" src="images/Symbol-Information.png" align="middle" />
        Informasi
        <br />
        Algoritma&nbsp;:
        <asp:Label ID="lblAlgoritma" runat="server" Style="text-align: right"></asp:Label>
        <br />
        Waktu pencarian :
        <asp:Label ID="lblWaktu" runat="server" Style="text-align: right"></asp:Label>
        &nbsp;S<br />
        Luas visualisasi&nbsp;:
        <asp:Label ID="lblLuas" runat="server"></asp:Label>
        m&sup2;<br />
        Luas wilayah air&nbsp;:
        <asp:Label ID="lblLuasAir" runat="server"></asp:Label>
        m&sup2;<br />
        Baris :&nbsp;<asp:Label ID="lblBarisKoma" runat="server"></asp:Label><br />
        Baris terdekat :&nbsp;<asp:Label ID="lblBaris" runat="server"></asp:Label><br />
        Kolom&nbsp;:
        <asp:Label ID="lblKolomKoma" runat="server"></asp:Label><br />
        Kolom terdekat&nbsp;:
        <asp:Label ID="lblKolom" runat="server"></asp:Label><br />
        Ketinggian titik terdekat :
        <asp:Label ID="lblZtitik" runat="server"></asp:Label>
        m<br />
        Ketinggian titik max&nbsp;:
        <asp:Label ID="lblZmax" runat="server"></asp:Label>
        m<br />
        Ketinggian titik min&nbsp;:
        <asp:Label ID="lblZmin" runat="server"></asp:Label>
        m<br />
        Jumlah pohon&nbsp;:
        <asp:Label ID="lblJumPohon" runat="server"></asp:Label>
        <br />
        Informasi Memori
        <br />
        <asp:Label ID="lblInfomemory" runat="server"></asp:Label>
        <br />
        Kategori :
        <asp:DropDownList ID="cmbListKategori" runat="server" DataSourceID="SqlDataSourceKategori"
            DataTextField="kategori" DataValueField="id_kategori" >
        </asp:DropDownList>
        <br />
        <asp:ImageButton ID="btnSimpan" runat="server" ImageUrl="~/images/Save.png" ToolTip="Simpan Lokasi"
            ImageAlign="Middle" OnClick="btnSimpan_Click" />
        Simpan Lokasi<br />
        <asp:Label ID="lblWarningSimpan" runat="server" ForeColor="Red"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSourceKategori" runat="server" ConnectionString="<%$ ConnectionStrings:tarecha_spasialConnectionString %>"
            SelectCommand="SELECT * FROM [tb_kategori] ORDER BY [kategori]"></asp:SqlDataSource>
    </p>
</asp:Content>
