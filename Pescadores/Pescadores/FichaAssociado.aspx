﻿<%@ Page Title="Ficha Associado" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FichaAssociado.aspx.cs" Inherits="Pescadores.FichaAssociado" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <br />
    <asp:Image ID="Image1" runat="server" ImageUrl="http://www.fepesba.com.br/wp-content/uploads/2016/05/topo.png" Width="95%" />

   <h4><asp:Label ID="lblColonia" runat="server"></asp:Label> - ID: <asp:Label ID="lblIDColonia" runat="server"></asp:Label> / <asp:Label ID="lblIDAssociado" runat="server"></asp:Label></h4>

    <h4>1 - IDENTIFICAÇÃO DO ASSOCIADO</h4>

    <asp:Image ID="fotoAssociado" runat="server" ImageUrl="https://1drv.ms/i/s!Aoipfutjfp3IgfsCftXmz0vTqVqEvw" Width="95%" />

    <p>Nome: <asp:Label ID="lblNome" runat="server"></asp:Label>. Apelido: <asp:Label ID="lblApelido" runat="server"></asp:Label></p>
    
    <p>Endereço: <asp:Label ID="lblEND" runat="server"></asp:Label>. Bairro: <asp:Label ID="lblBairro" runat="server"></asp:Label></p>
    <p>CEP: <asp:Label ID="lblCEP" runat="server"></asp:Label>. Municipio: <asp:Label ID="lblMunicipio" runat="server"></asp:Label>. Estado: <asp:Label ID="lblUF" runat="server"></asp:Label></p>

    <p>Pai: <asp:Label ID="lblPai" runat="server"></asp:Label>. Mãe: <asp:Label ID="lblMae" runat="server"></asp:Label></p>

    <p>Nascimento: <asp:Label ID="lblNascimento" runat="server"></asp:Label>. Naturalidade: <asp:Label ID="lblNatural" runat="server"></asp:Label>. Nacionalidade: <asp:Label ID="lblNacional" runat="server"></asp:Label>. Escolaridade: <asp:Label ID="lblEscolaridade" runat="server"></asp:Label></p>

    <p>CPF: <asp:Label ID="lblCPF" runat="server"></asp:Label>. RG: <asp:Label ID="lblRG" runat="server"></asp:Label>. Emissor: <asp:Label ID="lblEmissor" runat="server"></asp:Label>. Emissão: <asp:Label ID="lblEmissao" runat="server"></asp:Label></p>
    <p>Titulo Eleitor: <asp:Label ID="lblTitulo" runat="server"></asp:Label>. Zona: <asp:Label ID="lblZona" runat="server"></asp:Label>. Seção: <asp:Label ID="lblSecao" runat="server"></asp:Label></p>
    <p>PIS: <asp:Label ID="lblPIS" runat="server"></asp:Label>. NIT: <asp:Label ID="lblNIT" runat="server"></asp:Label>. CEI: <asp:Label ID="lblCEI" runat="server"></asp:Label></p>

    <p>Sexo: <asp:Label ID="lblSexo" runat="server"></asp:Label>. Est.Civil: <asp:Label ID="lblCivil" runat="server"></asp:Label>. Telefone: <asp:Label ID="lblTel" runat="server"></asp:Label>. e-mail: <asp:Label ID="lblemail" runat="server"></asp:Label></p>

    <h4>2 - INFORMAÇÕES PROFISSIONAIS</h4>

    <p>CTPS: <asp:Label ID="lblCTPS" runat="server"></asp:Label>. RGP Atual: <asp:Label ID="lblRGP" runat="server"></asp:Label>. 1o.Registro: <asp:Label ID="lblRGP1" runat="server"></asp:Label>. Órgão Emissor: <asp:Label ID="lblRGPEMissor" runat="server"></asp:Label></p>
    <p>Profissão: <asp:Label ID="lblprofissao" runat="server"></asp:Label>. Categoria: <asp:Label ID="lblcategoria" runat="server"></asp:Label>. Área de atuação: <asp:Label ID="lblareaatuacao" runat="server"></asp:Label></p>

    <p>Relação de Trabalho: <asp:Label ID="lblrelacao" runat="server"></asp:Label></p>
    <p>Utiliza Embarcação na atividade: <asp:Label ID="lblutilizaembarca" runat="server"></asp:Label></p>
    
    <p>Nome da Embarcação: <asp:Label ID="lblnomeEmbarca" runat="server"></asp:Label>. Propietário: <asp:Label ID="lblProp" runat="server"></asp:Label>. Tipo: <asp:Label ID="lblTipo" runat="server"></asp:Label>. Tamanho: <asp:Label ID="lblTamanho" runat="server"></asp:Label></p>
    <p>Propoulsão: <asp:Label ID="lblPropulp" runat="server"></asp:Label>.  N.Registro Cap.Portos: <asp:Label ID="lblCapPortos" runat="server"></asp:Label>. RGP/MPA: <asp:Label ID="lblRGPMPA" runat="server"></asp:Label></p>

    <p>Principais Artes de Pesca utilizadas: <asp:Label ID="lblprincipaisartes" runat="server"></asp:Label></p>
    <p>Dono das artes que trabalha: <asp:Label ID="lbldonoartes" runat="server"></asp:Label></p>
    <p>Principais Espécies Capturadas: <asp:Label ID="lblPrincipais" runat="server"></asp:Label></p>
    <p>Locais de venda da produção: <asp:Label ID="lbllocaisvenda" runat="server"></asp:Label></p>
    <p>Como o produto é comercializado: <asp:Label ID="lblComoComerc" runat="server"></asp:Label></p>

    <p>Quantos dias trabalha/mês: <asp:Label ID="lbldiasTrab" runat="server"></asp:Label>. Duração/Dia por pescaria: <asp:Label ID="lbldiaPesca" runat="server"></asp:Label>. Produção média Diária-Kg: <asp:Label ID="lblProdMedia" runat="server"></asp:Label></p>
    <p>Valor de Venda do produto Kg: <asp:Label ID="lblValorVenda" runat="server"></asp:Label>. Quant.Produto consumido-Kg: <asp:Label ID="lblConsumido" runat="server"></asp:Label></p>
    
    <h4>3 - INFORMAÇÕES SÓCIO ECONÔMICAS</h4>

    <p>Dependentes: <asp:Label ID="lblDependentes" runat="server"></asp:Label>. Filhos na Escola: <asp:Label ID="lblFilhos" runat="server"></asp:Label>. Recebe Seg.Defeso: <asp:Label ID="lbldefeso" runat="server"></asp:Label>. Recebe Bolsa Familia: <asp:Label ID="lblBolsaFam" runat="server"></asp:Label></p>
    <p>Possui Casa Própria: <asp:Label ID="lbltipoResid" runat="server"></asp:Label></p>
    <p>Água Encanada: <asp:Label ID="lblAgua" runat="server"></asp:Label></p>
    <p>Energia Eletrica: <asp:Label ID="lblEnergia" runat="server"></asp:Label></p>
    <p>Possui Telefone: <asp:Label ID="lblTelefone" runat="server"></asp:Label></p>
    <p>Possui Rede de Esgoto: <asp:Label ID="lblEsgoto" runat="server"></asp:Label></p>
    <p>Computador com Internet: <asp:Label ID="lblComputador" runat="server"></asp:Label></p>

    <p>Quantas Pessoas Mora na Residencia: <asp:Label ID="lblPessoas" runat="server"></asp:Label></p>
    <p>Quantos Menores: <asp:Label ID="lblMenores" runat="server"></asp:Label></p>
    <p>Algum Aposentado: <asp:Label ID="lblaposentado" runat="server"></asp:Label></p>

   



</asp:Content>
