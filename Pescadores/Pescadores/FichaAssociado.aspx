<%@ Page Title="Ficha Associado" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FichaAssociado.aspx.cs" Inherits="Pescadores.FichaAssociado" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
    </style>

    <br />
    <asp:Image ID="Image1" runat="server" ImageUrl="http://www.fepesba.com.br/wp-content/uploads/2016/05/topo.png" Width="95%" />
    
    <br />
    <h4><asp:Label ID="lblColonia" runat="server"></asp:Label> - ID: <asp:Label ID="lblIDColonia" runat="server"></asp:Label> / <asp:Label ID="lblIDAssociado" runat="server"></asp:Label></h4>

    <h4>1 - IDENTIFICAÇÃO DO ASSOCIADO</h4>

    <table style="width:100%">
        <tr>
            <td>NOME: <asp:Label ID="lblNome" runat="server"></asp:Label></td>
            <td>APELIDO: <asp:Label ID="lblApelido" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>ENDEREÇO: <asp:Label ID="lblEND" runat="server"></asp:Label></td>
            <td>BAIRRO: <asp:Label ID="lblBairro" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>CEP: <asp:Label ID="lblCEP" runat="server"></asp:Label>  </td>
            <td>MUNICÍPIO: <asp:Label ID="lblMunicipio" runat="server"></asp:Label>. UF: <asp:Label ID="lblUF" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>FILIAÇÃO PAI: <asp:Label ID="lblPai" runat="server"></asp:Label></td>
            <td>FILIAÇÃO MÃE: <asp:Label ID="lblMae" runat="server"></asp:Label></td>
        </tr>
    </table>

    <table style="width:100%">
        <tr>
            <td>NASCIMENTO: <asp:Label ID="lblNascimento" runat="server"></asp:Label></td>
            <td>NATURALIDADE: <asp:Label ID="lblNatural" runat="server"></asp:Label></td>            
            <td>NACIONALIDADE: <asp:Label ID="lblNacional" runat="server"></asp:Label></td>
            <td>ESCOLARIDADE: <asp:Label ID="lblEscolaridade" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>CPF: <asp:Label ID="lblCPF" runat="server"></asp:Label></td>
            <td>RG: <asp:Label ID="lblRG" runat="server"></asp:Label></td>
            <td>EMISSOR: <asp:Label ID="lblEmissor" runat="server"></asp:Label></td>
            <td>EMISSÃO: <asp:Label ID="lblEmissao" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>SEXO: <asp:Label ID="lblSexo" runat="server"></asp:Label></td>
            <td>EST.CIVIL: <asp:Label ID="lblCivil" runat="server"></asp:Label></td>
            <td>TELEFONE: <asp:Label ID="lblTel" runat="server"></asp:Label></td>
            <td>e-MAIL: <asp:Label ID="lblemail" runat="server"></asp:Label></td>
        </tr>
    </table>

    <table style="width:100%">
        <tr>
            <td>TITULO ELEITOR: <asp:Label ID="lblTitulo" runat="server"></asp:Label></td>
            <td>ZONA: <asp:Label ID="lblZona" runat="server"></asp:Label></td>
            <td>SEÇÃO: <asp:Label ID="lblSecao" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>PIS: <asp:Label ID="lblPIS" runat="server"></asp:Label></td>
            <td>NIT: <asp:Label ID="lblNIT" runat="server"></asp:Label></td>
            <td>CEI: <asp:Label ID="lblCEI" runat="server"></asp:Label></td>
        </tr>
    </table>

    <h4>2 - INFORMAÇÕES PROFISSIONAIS</h4>

    <p>CTPS: <asp:Label ID="lblCTPS" runat="server"></asp:Label>. RGP ATUAL: <asp:Label ID="lblRGP" runat="server"></asp:Label>. 1o.REGISTRO: <asp:Label ID="lblRGP1" runat="server"></asp:Label>. ÓRGÃO EMISSOR: <asp:Label ID="lblRGPEMissor" runat="server"></asp:Label></p>
    <p>PROFISSÃO: <asp:Label ID="lblprofissao" runat="server"></asp:Label>. CATEGORIA: <asp:Label ID="lblcategoria" runat="server"></asp:Label>. ÁREA DE ATUAÇÃO: <asp:Label ID="lblareaatuacao" runat="server"></asp:Label></p>

    <p>RELAÇÃO DE TRABALHO: <asp:Label ID="lblrelacao" runat="server"></asp:Label></p>
    <p>UTILIZA EMBARCAÇÃO NA ATIVIDADE: <asp:Label ID="lblutilizaembarca" runat="server"></asp:Label></p>
    
    <p>NOME DA EMBARCAÇÃO: <asp:Label ID="lblnomeEmbarca" runat="server"></asp:Label>. PROPIETÁRIO: <asp:Label ID="lblProp" runat="server"></asp:Label>. TIPO: <asp:Label ID="lblTipo" runat="server"></asp:Label>. TAMANHO: <asp:Label ID="lblTamanho" runat="server"></asp:Label></p>
    <p>PROPULSÃO: <asp:Label ID="lblPropulp" runat="server"></asp:Label>.  N.REGISTRO CAP.PORTOS: <asp:Label ID="lblCapPortos" runat="server"></asp:Label>. RGP/MPA: <asp:Label ID="lblRGPMPA" runat="server"></asp:Label></p>

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
    <p>Água Encanada: <asp:Label ID="lblAgua" runat="server"></asp:Label>. Energia Eletrica: <asp:Label ID="lblEnergia" runat="server"></asp:Label>. Possui Telefone: <asp:Label ID="lblTelefone" runat="server"></asp:Label></p>
    <p>Possui Rede de Esgoto: <asp:Label ID="lblEsgoto" runat="server"></asp:Label>. Computador com Internet: <asp:Label ID="lblComputador" runat="server"></asp:Label></p>
    <p>Quantas Pessoas Mora na Residencia: <asp:Label ID="lblPessoas" runat="server"></asp:Label>. Quantos Menores: <asp:Label ID="lblMenores" runat="server"></asp:Label>. Algum Aposentado: <asp:Label ID="lblaposentado" runat="server"></asp:Label></p>
    <p>Renda mensal na atividade: <asp:Label ID="lblrendaAtiv" runat="server"></asp:Label>. Exerce outra Atividade: <asp:Label ID="lblOutraAtiv" runat="server"></asp:Label>. Renda Mensal na Outra Atividade: <asp:Label ID="lblrendaOutra" runat="server"></asp:Label></p>
    <p>Quantos Recebem Seguro Defeso: <asp:Label ID="lblquantDefeso" runat="server"></asp:Label>. Quantos Recebem Bolsa Familia: <asp:Label ID="lblquantBolsa" runat="server"></asp:Label>. Total Renda Familiar: <asp:Label ID="lblTotalRenda" runat="server"></asp:Label></p>
    <p>Quanto tempo é associado na Colônia: <asp:Label ID="lbltempocolonia" runat="server"></asp:Label>. Esta em dias com as mensalidades: <asp:Label ID="lblemdias" runat="server"></asp:Label>. Valor da Mensalidade: <asp:Label ID="lblMensalidade" runat="server"></asp:Label></p>
    <p>Está Inadimplete? Porque ?: <asp:Label ID="lblinadimp" runat="server"></asp:Label>. Esta satisfeito?: <asp:Label ID="lblsatisfeito" runat="server"></asp:Label></p>
    <p>Opnião sobre melhoria do atendimento:</p>
    <p><asp:Label ID="lblOpniao" runat="server"></asp:Label></p>


    <br />
    <h4>DECLARAÇÃO DE EXERCÍCIOS DA ATIVIDADE</h4>
    
    <p>Declaramos, sob responsabilidade civil e penal, que as informações prestadas neste formulário de recadastramento de pescadores(as)</p>
    <p>são verdadeiras e que estamos cientes de que informações não verídicas declaradas, implicarão em penalidades previstas no artigo </p>
    <p>299 do Código Penal (falsidade ideológica) além de outras sanções civis e administrativas cabíveis.</p>
    <br />
    <p><asp:Label ID="lblCidade" runat="server"></asp:Label> - <asp:Label ID="lblUFColonia" runat="server"></asp:Label>, <asp:Label ID="lbldataemissao" runat="server"></asp:Label> </p>
    <br />

    <p>_____________________________________</p>
    <p>Assinatura do associado</p>
    
    <br />
    <p>Testemunhas</p>
    <br />
    
    <p>1._____________________________________</p>
    <p>Nome e Asinatura</p>
    <p>RG:</p>
    <p>RGP:</p>
    <br />

    <p>2._____________________________________</p>
    <p>Nome e Asinatura</p>
    <p>RG:</p>
    <p>RGP:</p>
    <br />


    <p>_____________________________________</p>
    <p>Assinatura e nome do Entrevistador</p>



</asp:Content>
