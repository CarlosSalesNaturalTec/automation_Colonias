<%@ Page Title="Listagem de Associados - GECOPE" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastro_Listagem.aspx.cs" Inherits="Associados.Cadastro_Listagem" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <h3>ASSOCIADOS CADASTRADOS</h3>
    <br />

    <!-- Grid -->
    <asp:GridView ID="GridAssociados" runat="server" AutoGenerateColumns="true" Width="100%">
    </asp:GridView>

</asp:Content>
