<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Tarecha_Spasial_Baru.WebForm1" %>
<%@ Register assembly="WebFiguresService, Version=2.12.1.0, Culture=neutral, PublicKeyToken=e1d84a0da19db86f" namespace="MathWorks.MATLAB.NET.WebFigures.Service" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="SheetContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" runat="server">
    <cc1:WebFigureControl ID="WebFigureControl1" runat="server" />
</asp:Content>
