﻿<%@ Page Title="Pesquisa Associados" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastro_Listagem.aspx.cs" EnableEventValidation="false" Inherits="Pescadores.Cadastro_Listagem" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h3>ASSOCIADOS CADASTRADOS</h3>

    <p>Nome do Associado (completo ou parcial)</p>
    <asp:TextBox ID="txtPesquisa" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Consultar" OnClick="BtPesquisar" />
    
    <p></p>

    <div class="well">
        <p class="text-danger">
            <asp:Label ID="lblAssociado" runat="server"></asp:Label>
        </p>
        <asp:Button ID="Bt_Alterar" runat="server" Text="Alterar" OnClick="BtAlterar" Visible="false" />
        <asp:Button ID="Bt_Excluir" runat="server" Text="Excluir" OnClick="BtExcluir" Visible="false" />
        <asp:Button ID="Bt_Imprimir" runat="server" Text="Imprimir" OnClick="BtImprimir" Visible="false" />
    </div>

    <!-- Grid -->
    <p></p>
    <asp:GridView ID="GridAssociados" runat="server" AutoGenerateColumns="true" Width="100%" OnRowDataBound="GridAssociados_RowDataBound" OnSelectedIndexChanged="GridAssociados_SelectedIndexChanged">
    </asp:GridView>


</asp:Content>
