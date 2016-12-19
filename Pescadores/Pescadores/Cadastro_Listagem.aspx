<%@ Page Title="Pesquisa Associados" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastro_Listagem.aspx.cs" EnableEventValidation="false" Inherits="Pescadores.Cadastro_Listagem" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <style type="text/css">
        #results {
            float: right;
            margin: 5px;
            padding: 5px;
            border: 1px solid;
            background: #ccc;
        }
    </style>

    <h4><asp:Label ID="lblColonia" runat="server"></asp:Label> - ID:<asp:Label ID="lblIDColonia" runat="server"></asp:Label></h4>

    <h3>ASSOCIADOS CADASTRADOS</h3>

    <p>Digite o Nome do Associado (completo ou parcial)</p>
    <asp:TextBox ID="txtPesquisa" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Consultar" OnClick="BtPesquisar" />
    
    <p></p>

    <div class="row">
        <div class="col-sm-10">
            <div class="well">
                <p class="text-danger">
                    <asp:Label ID="lblAssociado" runat="server"></asp:Label>-<asp:Label ID="lblID" runat="server"></asp:Label>
                </p>
                <asp:Button ID="Bt_Alterar" runat="server" Text="Alterar" OnClick="BtAlterar" Visible="false" />
                <asp:Button ID="Bt_Excluir" runat="server" Text="Excluir" OnClick="BtExcluir" Visible="false" />
                <asp:Button ID="Bt_Imprimir" runat="server" Text="Imprimir" OnClick="BtImprimir" Visible="false" />

                <p class="text-danger">
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </p>

                <asp:Button ID="BtConfirmar" runat="server" Text="Confirmar" OnClick="Bt_Confirmar" Visible="false" />
                <asp:Button ID="BtDesistir" runat="server" Text="Desistir" OnClick="Bt_Desistir" Visible="false" />

            </div>
        </div>
        <div class="col-sm-2">
            <div class="well" id="results"></div>
        </div>
    </div>

    <!-- Grid -->
    <p></p>
    <asp:GridView ID="GridAssociados" runat="server" AutoGenerateColumns="true" Width="100%" OnRowDataBound="GridAssociados_RowDataBound" OnSelectedIndexChanged="GridAssociados_SelectedIndexChanged">
    </asp:GridView>


</asp:Content>
