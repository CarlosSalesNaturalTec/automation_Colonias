<%@ Page Title="Painel" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Painel.aspx.cs" Inherits="Pescadores.Painel" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>GECOPE</h1>
        <p class="lead">Cadastramento ON-LINE de Associados</p>
    </div>

    <h3  class="text-danger">
        <asp:Label ID="lblColonia" runat="server" Text=""></asp:Label></h3>
    <p></p>

    <asp:Image ID="Image1" runat="server" ImageUrl="http://www.fepesba.com.br/wp-content/uploads/2016/05/topo.png" Width="95%" />

</asp:Content>
