<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true"
    CodeBehind="DaftarVisual.aspx.cs" Inherits="Tarecha_Spasial_Baru.DaftarVisual" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
    Daftar Visual
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
    <li><a href="VisualisasiRadius.aspx">Visualisasi Radius</a></li>
    <li><a href="VisualisasiDuaTitik.aspx">Visualisasi Dua Titik</a></li>
    <li><a href="DaftarVisual.aspx" class=" active">Daftar Visual</a></li>   
    <li><a href="ManageData.aspx">Manajemen Data</a></li>      
    <li><a href="Bantuan.aspx">Bantuan</a></li>  
    <li><a href="Tentang.aspx">Tentang Peneliti</a></li>
   </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="SheetContentPlaceHolder" runat="server">
  
    <div align="center">
      <br />
        <span class="style1">Tabel Lokasi</span></div>
    <asp:Label ID="lblWarningLokasi" runat="server" ForeColor="Red"></asp:Label>
    <br />
      <asp:GridView ID="TabelLokasi" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_lokasi,id_kategori1"
        DataSourceID="SqlDataSourceLokasi" EnableModelValidation="True" ForeColor="#333333"
        GridLines="None" Width="100%"  OnSelectedIndexChanged="TabelLokasi_SelectedIndexChanged"
        HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
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
            <asp:CommandField ShowSelectButton="True" ButtonType="Image"
                CausesValidation="False" DeleteImageUrl="~/images/delete.png" HeaderImageUrl="~/images/normal sedang.png"
                SelectImageUrl="~/images/normalkecik.png" >
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" Width="100px" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
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
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" runat="server">
</asp:Content>
