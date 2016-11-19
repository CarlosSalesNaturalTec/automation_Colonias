<%@ Page Title="Cadastro de Associados" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cad_Associados.aspx.cs" Inherits="Gecope.Cad_Associados" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Cadastro de Associados</h3>

    <ul class="nav nav-tabs">
        <li class="active"><a href="#home" data-toggle="tab">Listagem Geral</a></li>
        <li><a href="#profile" data-toggle="tab">Ficha Detalhada</a></li>
        <li><a href="#diretoria" data-toggle="tab">Produtos de Pesca</a></li>
        <li><a href="#docs" data-toggle="tab">Documentos Digitalizados</a></li>
        <li><a href="#docs" data-toggle="tab">Foto e Biometria</a></li>
        <li><a href="#docs" data-toggle="tab">Declarações e Fichas</a></li>
        <li><a href="#docs" data-toggle="tab">Cadastro Social</a></li>
        <li><a href="#docs" data-toggle="tab">Projeto/Cultivo</a></li>
    </ul>

    <div id="myTabContent" class="tab-content">

        <div class="tab-pane fade active in" id="home">

            <br />

        </div>

        <div class="tab-pane fade" id="profile">
        </div>

        <div class="tab-pane fade" id="diretoria">
        </div>

        <div class="tab-pane fade" id="docs">
        </div>


    </div>

</asp:Content>
