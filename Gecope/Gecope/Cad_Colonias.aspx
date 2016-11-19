<%@ Page Title="Cadastro de Colônias" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cad_Colonias.aspx.cs" Inherits="Gecope.Cad_Colonias" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Cadastro de Colônias</h3>

    <ul class="nav nav-tabs">
        <li class="active"><a href="#home" data-toggle="tab">Listagem Geral</a></li>
        <li><a href="#profile" data-toggle="tab">Ficha Detalhada</a></li>
        <li><a href="#diretoria" data-toggle="tab">Diretoria</a></li>
        <li><a href="#docs" data-toggle="tab">Documentos Digitalizados</a></li>
    </ul>
    <div id="myTabContent" class="tab-content">

        <div class="tab-pane fade active in" id="home">

            <br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField HeaderText="Colônias" />
                    <asp:BoundField HeaderText="Cidade" />
                    <asp:BoundField HeaderText="Responsável" />
                    <asp:BoundField HeaderText="Observações" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

        </div>

        <div class="tab-pane fade" id="profile">
        </div>

        <div class="tab-pane fade" id="diretoria">
        </div>

        <div class="tab-pane fade" id="docs">
        </div>


    </div>

</asp:Content>
