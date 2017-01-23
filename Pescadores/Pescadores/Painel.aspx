<%@ Page Title="Painel" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Painel.aspx.cs" Inherits="Pescadores.Painel" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <asp:Image ID="Image1" runat="server" ImageUrl="~/midias/pescador.JPG" />
    <br />
    <h3 class="text-danger">
        <asp:Label ID="lblColonia" runat="server" Text=""></asp:Label></h3>
    <br />

    <div class ="row">

    <div class="panel panel-primary col-md-4">
        <div class="panel-heading">
            <h3 class="panel-title">Associados Cadastrados</h3>
        </div>
        <div class="panel-body">
            <asp:Label ID="lblQuant" runat="server"></asp:Label>
        </div>
    </div>

    </div>

</asp:Content>
