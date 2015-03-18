<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true"
    CodeBehind="ManageData.aspx.cs" Inherits="Tarecha_Spasial_Baru.ManageData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
    Manajemen Data
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
     <ul class="art-hmenu">
        <li><a href="Default.aspx" >Beranda</a></li>
        <li><a href="VisualisasiRadius.aspx">Visualisasi Titik Tengah</a></li>
        <li><a href="VisualisasiDuaTitik.aspx">Visualisasi Titik Tepi</a></li>
       <%-- <li><a href="DaftarVisual.aspx">Daftar Visual</a></li>--%>
        <li><a href="ManageData.aspx" class=" active">Manajemen Data</a></li>
        <li><a href="Bantuan.aspx">Tutorial</a></li>
        <li><a href="Tentang.aspx">Tentang Peneliti</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="SheetContentPlaceHolder" runat="server">
<div style="margin-top: 0px; margin-bottom: 20px; margin-right: 20px; margin-left: 20px;">
    <div align="center">
         <br />
         <span class="style1">Tabel Kategori       
        </span>       
        <br />
        Kategori
        <asp:TextBox ID="txtKategori" runat="server" Width="88px" align="middle"></asp:TextBox>
        <asp:ImageButton ID="btnAddKategori" runat="server" ImageAlign="Middle" ImageUrl="~/images/add.png"
            OnClick="btnAddKategori_Click" />
        <br />
        <asp:RequiredFieldValidator ID="valKategori" runat="server" ControlToValidate="txtKategori"
            ErrorMessage="Isi nama kategori" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblWarningKategori" runat="server" ForeColor="Red"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_kategori" DataSourceID="SqlDataSourceKategori"
            EnableModelValidation="True" ForeColor="Black" OnRowDeleted="GridView1_RowDeleted"
            OnRowUpdated="GridView1_RowUpdated" BackColor="#CCCCCC" 
             BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
            <Columns>
                <asp:CommandField ButtonType="Image" CancelImageUrl="~/images/cancel.png" DeleteImageUrl="~/images/delete.png"
                    EditImageUrl="~/images/edit.png" HeaderImageUrl="~/images/perintah.png" HeaderText="Perintah"
                    InsertImageUrl="~/images/insert.png" NewImageUrl="~/images/add.png" ShowDeleteButton="True"
                    ShowEditButton="True" ShowHeader="True" UpdateImageUrl="~/images/oke.png" CausesValidation="False" />
                <asp:BoundField DataField="kategori" HeaderText="Kategori" SortExpression="kategori" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceKategori" runat="server" ConflictDetection="CompareAllValues"
            ConnectionString="<%$ ConnectionStrings:tarecha_spasialConnectionString %>" DeleteCommand="DELETE FROM [tb_kategori] WHERE [id_kategori] = @original_id_kategori AND (([kategori] = @original_kategori) OR ([kategori] IS NULL AND @original_kategori IS NULL))"
            InsertCommand="INSERT INTO [tb_kategori] ([kategori]) VALUES (@kategori)" OldValuesParameterFormatString="original_{0}"
            SelectCommand="SELECT * FROM [tb_kategori] ORDER BY [kategori]" UpdateCommand="UPDATE [tb_kategori] SET [kategori] = @kategori WHERE [id_kategori] = @original_id_kategori AND (([kategori] = @original_kategori) OR ([kategori] IS NULL AND @original_kategori IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id_kategori" Type="Int32" />
                <asp:Parameter Name="original_kategori" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="kategori" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="kategori" Type="String" />
                <asp:Parameter Name="original_id_kategori" Type="Int32" />
                <asp:Parameter Name="original_kategori" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        &nbsp;
    </div>
    <hr />
    <div align="center" class="style1">
        Tabel Lokasi</div>
    <asp:Label ID="lblWarningLokasi" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <asp:GridView ID="TabelLokasi" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_lokasi,id_kategori1"
        DataSourceID="SqlDataSourceLokasi" EnableModelValidation="True" 
        ForeColor="Black" Width="100%" OnRowDeleted="TabelLokasi_RowDeleted" OnSelectedIndexChanged="TabelLokasi_SelectedIndexChanged"
        HorizontalAlign="Center" BackColor="#CCCCCC" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" ButtonType="Image"
                CausesValidation="False" DeleteImageUrl="~/images/delete.png" HeaderImageUrl="~/images/perintah.png"
                SelectImageUrl="~/images/normalkecik.png" >
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:CommandField>
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
            <asp:BoundField DataField="radius" HeaderText="Radius" SortExpression="radius" >
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
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" 
            Width="100px" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSourceLokasi" runat="server" ConnectionString="<%$ ConnectionStrings:tarecha_spasialConnectionString %>"
        DeleteCommand="DELETE FROM [tb_lokasi] WHERE [id_lokasi] = @original_id_lokasi AND [nama] = @original_nama AND [latitude] = @original_latitude AND [longitude] = @original_longitude AND (([latitude2] = @original_latitude2) OR ([latitude2] IS NULL AND @original_latitude2 IS NULL)) AND (([longitude2] = @original_longitude2) OR ([longitude2] IS NULL AND @original_longitude2 IS NULL)) AND (([radius] = @original_radius) OR ([radius] IS NULL AND @original_radius IS NULL)) AND [algoritma] = @original_algoritma"
        OldValuesParameterFormatString="original_{0}" SelectCommand="select * from tb_lokasi, tb_kategori where tb_kategori.id_kategori=tb_lokasi.id_kategori order by tb_kategori.kategori, tb_lokasi.algoritma"
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
