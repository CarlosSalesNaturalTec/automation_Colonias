<%@ Page Title="Ficha Associado" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FichaAssociado.aspx.cs" Inherits="Pescadores.FichaAssociado" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <br />
    <asp:Image ID="Image1" runat="server" ImageUrl="http://www.fepesba.com.br/wp-content/uploads/2016/05/topo.png" Width="95%" />

   <h4><asp:Label ID="lblColonia" runat="server"></asp:Label> - ID: <asp:Label ID="lblIDColonia" runat="server"></asp:Label> / <asp:Label ID="lblIDAssociado" runat="server"></asp:Label></h4>

    <h4>1 -IDENTIFICAÇÃO DO ASSOCIADO</h4>

    <asp:Image ID="fotoAssociado" runat="server" ImageUrl="https://1drv.ms/i/s!Aoipfutjfp3IgfsCftXmz0vTqVqEvw" Width="95%" />

    <p><asp:Label ID="Label1" runat="server" Text="Nome / Apelido" CssClass="text-primary"></asp:Label></p>
    <p><asp:Label ID="lblNome" runat="server" Text="xxxx"></asp:Label> - <asp:Label ID="lblApelido" runat="server" Text="xxxx"></asp:Label></p>

    <p><asp:Label ID="Label2" runat="server" Text="Endereço / Bairro" CssClass="text-primary"></asp:Label></p>
    <p><asp:Label ID="lblEND" runat="server" Text="xxxx"></asp:Label> - <asp:Label ID="lblBairro" runat="server" Text="xxxx"></asp:Label></p>


    
    
</asp:Content>
