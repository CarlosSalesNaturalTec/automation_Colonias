<%@ Page Title="Ficha Associado" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FichaAssociado.aspx.cs" Inherits="Pescadores.FichaAssociado" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <br />
    <asp:Image ID="Image1" runat="server" ImageUrl="http://www.fepesba.com.br/wp-content/uploads/2016/05/topo.png" Width="95%" />

    <h4>
        <asp:Label ID="lblColonia" runat="server" Text=""></asp:Label>
    </h4>

    <h4>1 -IDENTIFICAÇÃO DO ASSOCIADO</h4>
    <asp:Label ID="Label1" runat="server" Text="Nome" CssClass="text-primary"></asp:Label>
    <asp:Label ID="lblNome" runat="server" Text="xxxx"></asp:Label>
    
</asp:Content>
