<%@ Page Title="Carteira Provisória" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CarteiraProv.aspx.cs" Inherits="Pescadores.CarteiraProv" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        table {
            border: 1px solid black;
            border-collapse: collapse;
        }
         #results {
            float: left;
            border: 1px solid;
            background: #ccc;
        }
    </style>

    <br />
   
    <table style="width: 100%">



        <tr>
            <td style="width:50%">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/midias/logo.png" />
            </td>

                <td style="width:25%"></td>
                <td style="width:25%"></td>
                      
        </tr>
       
        <tr>
            <td style="width:50%">
                <h4><asp:Label ID="lblColonia" runat="server"></asp:Label> - ID: <asp:Label ID="lblIDColonia" runat="server"></asp:Label> / <asp:Label ID="lblIDAssociado" runat="server"></asp:Label></h4>
            </td>

                <td style="width:25%"><b>Filiação</b></td>
                <td style="width:25%"><b>Data Nascimento</b></td>
                
        </tr>





        <tr>
             <td style="width:50%">
            </td>
                <td style="width:25%"><asp:Label ID="lblPai" runat="server"></asp:Label></td>
                <td style="width:25%"><asp:Label ID="lblNascimento" runat="server"></asp:Label></td>
          
        </tr>

        <tr>
             <td style="width:50%"><b>Carteira Provisória</b></td>
             <td><asp:Label ID="lblMae" runat="server"></asp:Label>
             <td style="width:25%">&nbsp;</td>
        </tr>




        <tr>
            <td style="width:50%"></td>
                <td style="width:25%"><b>Naturalidade</b></td>
                <td style="width:25%"><b>Nacionalidade</b></td>
        </tr>

         <tr>
            <td style="width:50%"></td>
                <td style="width:25%"><asp:Label ID="lblNatural" runat="server"></asp:Label></td>
                <td style="width:25%"><asp:Label ID="lblNacional" runat="server"></asp:Label></td>
        </tr>





        <tr>
            <td style="width:50%">
            </td>
                <td style="width:25%"><b>RG</b></td>
                <td style="width:25%"><b>Data Expedição</b></td>
        </tr>

         <tr>
            <td style="width:50%"></td>
                <td style="width:25%"><asp:Label ID="lblRG" runat="server"></asp:Label></td>
                <td style="width:25%"><asp:Label ID="lblEmissao" runat="server"></asp:Label></td>
        </tr>





        <tr>
            <td style="width:50%">
                <h4><asp:Label ID="lblNome" runat="server"></asp:Label></h4>
            </td>
                <td style="width:25%"><b>CPF</b></td>
                <td style="width:25%"><b>PIS</b></td>
        </tr>

        <tr>
            <td style="width:50%"></td>
                <td style="width:25%"><asp:Label ID="lblCPF" runat="server"></asp:Label></td>
                <td style="width:25%"><asp:Label ID="lblPIS" runat="server"></asp:Label></td>
        </tr>






        <tr>
                <td style="width:25%"><b>Admissão</b></td>
            
                <td style="width:25%"><b>CEI</b></td>
                <td style="width:25%"><b>NIT</b></td>
        </tr>

        <tr>
            <td style="width:50%"><asp:Label ID="lbladmiss" runat="server"></asp:Label></td>
            <td>
                <asp:Label ID="lblCEI" runat="server"></asp:Label>
                <td style="width:25%"><asp:Label ID="lblNIT" runat="server"></asp:Label></td>
               
        </tr>






        <tr>
            <td style="width:50%">
            </td>
                <td style="width:25%"><b>RPG</b></td>
                <td style="width:25%"><b>CTPS</b></td>
        </tr>

        <tr>
            <td style="width:50%"></td>
            <td>
                <asp:Label ID="lblRGP" runat="server"></asp:Label>
                <td style="width:25%"><asp:Label ID="lblCTPS" runat="server"></asp:Label></td>
                
        </tr>




    </table>

</asp:Content>
