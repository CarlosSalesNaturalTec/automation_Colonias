<%@ Page Title="Painel" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Painel.aspx.cs" Inherits="Pescadores.Painel" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <asp:Image ID="Image1" runat="server" ImageUrl="~/midias/pescador.JPG" />
    <br />
    <h3 class="text-danger"><asp:Label ID="lblColonia" runat="server" Text=""></asp:Label></h3>

</asp:Content>
