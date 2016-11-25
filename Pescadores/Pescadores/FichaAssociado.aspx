<%@ Page Title="Ficha Associado" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FichaAssociado.aspx.cs" Inherits="Pescadores.FichaAssociado" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <br />
    <asp:Image ID="Image1" runat="server" ImageUrl="http://www.fepesba.com.br/wp-content/uploads/2016/05/topo.png" Width="95%" />

   <h4><asp:Label ID="lblColonia" runat="server"></asp:Label> - ID: <asp:Label ID="lblIDColonia" runat="server"></asp:Label> / <asp:Label ID="lblIDAssociado" runat="server"></asp:Label></h4>

    <h4>1 - IDENTIFICAÇÃO DO ASSOCIADO</h4>

    <asp:Image ID="fotoAssociado" runat="server" ImageUrl="https://1drv.ms/i/s!Aoipfutjfp3IgfsCftXmz0vTqVqEvw" Width="95%" />

    <p><asp:Label ID="Label1" runat="server" Text="Nome - Apelido" CssClass="text-primary"></asp:Label></p>
    <p><asp:Label ID="lblNome" runat="server"></asp:Label>. Apelido: <asp:Label ID="lblApelido" runat="server"></asp:Label></p>
    
    <p><asp:Label ID="Label2" runat="server" Text="Endereço" CssClass="text-primary"></asp:Label></p>
    <p><asp:Label ID="lblEND" runat="server"></asp:Label>. Bairro: <asp:Label ID="lblBairro" runat="server"></asp:Label></p>
    <p>CEP: <asp:Label ID="lblCEP" runat="server"></asp:Label>. Municipio: <asp:Label ID="lblMunicipio" runat="server"></asp:Label>. Estado: <asp:Label ID="lblUF" runat="server"></asp:Label></p>

    <p><asp:Label ID="Label4" runat="server" Text="Filiação" CssClass="text-primary"></asp:Label></p>
    <p>Pai: <asp:Label ID="lblPai" runat="server"></asp:Label>. Mãe: <asp:Label ID="lblMae" runat="server"></asp:Label></p>

    <p><asp:Label ID="Label5" runat="server" Text="Data Nascimento - Naturalidade - Nacionalidade - Escolaridade" CssClass="text-primary"></asp:Label></p>
    <p>Nascimento: <asp:Label ID="lblNascimento" runat="server"></asp:Label>. Naturalidade: <asp:Label ID="lblNatural" runat="server"></asp:Label>. Nacionalidade: <asp:Label ID="lblNacional" runat="server"></asp:Label>. Escolaridade: <asp:Label ID="lblEscolaridade" runat="server"></asp:Label></p>

    <p><asp:Label ID="Label6" runat="server" Text="Documentação" CssClass="text-primary"></asp:Label></p>
    <p>CPF: <asp:Label ID="lblCPF" runat="server"></asp:Label>. RG: <asp:Label ID="lblRG" runat="server"></asp:Label>. Emissor: <asp:Label ID="lblEmissor" runat="server"></asp:Label>. Emissão: <asp:Label ID="lblEmissao" runat="server"></asp:Label></p>
    <p>Titulo Eleitor: <asp:Label ID="lblTitulo" runat="server"></asp:Label>. Zona: <asp:Label ID="lblZona" runat="server"></asp:Label>. Seção: <asp:Label ID="lblSecao" runat="server"></asp:Label></p>
    <p>PIS: <asp:Label ID="lblPIS" runat="server"></asp:Label>. NIT: <asp:Label ID="lblNIT" runat="server"></asp:Label>. CEI: <asp:Label ID="lblCEI" runat="server"></asp:Label></p>

    <p><asp:Label ID="Label3" runat="server" Text="Sexo - Est.Civil - Telefone - Email" CssClass="text-primary"></asp:Label></p>
    <p>Sexo: <asp:Label ID="lblSexo" runat="server"></asp:Label>. Est.Civil: <asp:Label ID="lblCivil" runat="server"></asp:Label>. Telefone: <asp:Label ID="lblTel" runat="server"></asp:Label>. e-mail: <asp:Label ID="lblemail" runat="server"></asp:Label></p>

    <h4>2 - INFORMAÇÕES PROFISSIONAIS</h4>

    <p><asp:Label ID="Label7" runat="server" Text="CTPS / RPG" CssClass="text-primary"></asp:Label></p>
    <p>CTPS: <asp:Label ID="lblCTPS" runat="server"></asp:Label>. RGP Atual: <asp:Label ID="lblRGP" runat="server"></asp:Label>. 1o.Registro: <asp:Label ID="lblRGP1" runat="server"></asp:Label>. Órgão Emissor: <asp:Label ID="lblRGPEMissor" runat="server"></asp:Label></p>

</asp:Content>
