<%@ Page Title="Ficha Associado" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FichaAssociado2.aspx.cs" Inherits="Pescadores.FichaAssociado2" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
        #results {
            float: right;
            margin: 5px;
            padding: 5px;
            border: 1px solid;
            background: #ccc;
        }
    </style>

    <br />
    <asp:Image ID="Image1" runat="server" ImageUrl="http://www.fepesba.com.br/wp-content/uploads/2016/05/topo.png" Width="80%" />
    <div id="results"></div>

    <br />
    <h4><asp:Label ID="lblColonia" runat="server"></asp:Label> - ID: <asp:Label ID="lblIDColonia" runat="server"></asp:Label> / <asp:Label ID="lblIDAssociado" runat="server"></asp:Label></h4>

    <h4>1 - IDENTIFICAÇÃO DO ASSOCIADO</h4>

    <table style="width:100%">
        <tr>
            <td><b>NOME:</b> <asp:Label ID="lblNome" runat="server"></asp:Label></td>
            <td><b>APELIDO:</b><asp:Label ID="lblApelido" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><b>FILIAÇÃO PAI:</b> <asp:Label ID="lblPai" runat="server"></asp:Label></td>
            <td><b>FILIAÇÃO MÃE:</b><asp:Label ID="lblMae" runat="server"></asp:Label></td>
        </tr>
    </table>

    <table style="width:100%">
        <tr>
            <td><b>ENDEREÇO:</b> <asp:Label ID="lblEND" runat="server"></asp:Label></td>
            <td><b>BAIRRO:</b> <asp:Label ID="lblBairro" runat="server"></asp:Label></td>
            <td><b>CEP: </b><asp:Label ID="lblCEP" runat="server"></asp:Label>  </td>
            <td><b>MUNICÍPIO:</b> <asp:Label ID="lblMunicipio" runat="server"></asp:Label>.<b> UF:</b> <asp:Label ID="lblUF" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><b>NASCIMENTO:</b> <asp:Label ID="lblNascimento" runat="server"></asp:Label></td>
            <td><b>NATURALIDADE:</b> <asp:Label ID="lblNatural" runat="server"></asp:Label></td>            
            <td><b>NACIONALIDADE: </b><asp:Label ID="lblNacional" runat="server"></asp:Label></td>
            <td><b>ESCOLARIDADE:</b> <asp:Label ID="lblEscolaridade" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><b>CPF: </b><asp:Label ID="lblCPF" runat="server"></asp:Label></td>
            <td><b>RG:</b> <asp:Label ID="lblRG" runat="server"></asp:Label></td>
            <td><b>EMISSOR: </b><asp:Label ID="lblEmissor" runat="server"></asp:Label></td>
            <td><b>EMISSÃO:</b> <asp:Label ID="lblEmissao" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><b>SEXO:</b> <asp:Label ID="lblSexo" runat="server"></asp:Label></td>
            <td><b>EST.CIVIL:</b> <asp:Label ID="lblCivil" runat="server"></asp:Label></td>
            <td><b>TELEFONE:</b> <asp:Label ID="lblTel" runat="server"></asp:Label></td>
            <td><b>e-MAIL:</b> <asp:Label ID="lblemail" runat="server"></asp:Label></td>
        </tr>
    </table>

    <table style="width:100%">
        <tr>
            <td><b>TITULO ELEITOR: </b><asp:Label ID="lblTitulo" runat="server"></asp:Label></td>
            <td><b>PIS:</b> <asp:Label ID="lblPIS" runat="server"></asp:Label></td>
            <td><b>NIT: </b><asp:Label ID="lblNIT" runat="server"></asp:Label></td>
            <td><b>CEI:</b> <asp:Label ID="lblCEI" runat="server"></asp:Label></td>
        </tr>
    </table>

    <h4>2 - INFORMAÇÕES PROFISSIONAIS</h4>

    <table style="width:100%">
        <tr>
            <td><b>CTPS:</b> <asp:Label ID="lblCTPS" runat="server"></asp:Label></td>
            <td><b>RGP ATUAL:</b> <asp:Label ID="lblRGP" runat="server"></asp:Label></td>
            <td><b>1o.REGISTRO:</b> <asp:Label ID="lblRGP1" runat="server"></asp:Label></td>
            <td><b>ÓRGÃO EMISSOR:</b> <asp:Label ID="lblRGPEMissor" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><b>PROFISSÃO:</b> <asp:Label ID="lblprofissao" runat="server"></asp:Label></td>
            <td><b>CATEGORIA:</b> <asp:Label ID="lblcategoria" runat="server"></asp:Label></td>
            <td><b>ÁREA DE ATUAÇÃO:</b> <asp:Label ID="lblareaatuacao" runat="server"></asp:Label></td>
            <td><b>RELAÇÃO DE TRABALHO:</b> <asp:Label ID="lblrelacao" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><b>UTILIZA EMBARCAÇÃO NA ATIVIDADE: </b><asp:Label ID="lblutilizaembarca" runat="server"></asp:Label></td>
            <td><b>NOME DA EMBARCAÇÃO: </b><asp:Label ID="lblnomeEmbarca" runat="server"></asp:Label></td>
            <td><b>PROPIETÁRIO:</b> <asp:Label ID="lblProp" runat="server"></asp:Label></td>
            <td><b>TIPO:</b> <asp:Label ID="lblTipo" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><b>TAMANHO:</b> <asp:Label ID="lblTamanho" runat="server"></asp:Label></td>
            <td><b>PROPULSÃO:</b> <asp:Label ID="lblPropulp" runat="server"></asp:Label></td>
            <td><b>N.REGISTRO CAP.PORTOS:</b> <asp:Label ID="lblCapPortos" runat="server"></asp:Label></td>
            <td><b>RGP/MPA:</b> <asp:Label ID="lblRGPMPA" runat="server"></asp:Label></td>
        </tr>
    </table>

    <table style="width:100%">
        <tr>
            <td><b>Principais Artes de Pesca utilizadas:</b> <asp:Label ID="lblprincipaisartes" runat="server"></asp:Label></td>
            <td><b>Quantidade das Artes de Pesca</b> <asp:Label ID="lblArtesQuant" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><b>Dono das artes que trabalha:</b> <asp:Label ID="lbldonoartes" runat="server"></asp:Label></td>
            <td><b>Principais Espécies Capturadas:</b> <asp:Label ID="lblPrincipais" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><b>Locais de venda da produção:</b> <asp:Label ID="lbllocaisvenda" runat="server"></asp:Label></td>
            <td><b>Como o produto é comercializado:</b> <asp:Label ID="lblComoComerc" runat="server"></asp:Label></td>
        </tr>
    </table>

    <table style="width:100%">
        <tr>
            <td><b>Quantos dias trabalha/mês:</b> <asp:Label ID="lbldiasTrab" runat="server"></asp:Label></td>
            <td><b>Duração/Dia por pescaria:</b> <asp:Label ID="lbldiaPesca" runat="server"></asp:Label></td>
            <td><b>Produção média Diária-Kg:</b> <asp:Label ID="lblProdMedia" runat="server"></asp:Label></td>
            <td><b>Valor de Venda do produto Kg:</b> <asp:Label ID="lblValorVenda" runat="server"></asp:Label></td>
            <td><b>Quant.Produto consumido-Kg:</b> <asp:Label ID="lblConsumido" runat="server"></asp:Label></td>
        </tr>
    </table>
    
    <h4>3 - INFORMAÇÕES SÓCIO ECONÔMICAS</h4>

    <table style="width:100%">
        <tr>
            <td><b>Dependentes: </b><asp:Label ID="lblDependentes" runat="server"></asp:Label></td>
            <td><b>Filhos na Escola:</b> <asp:Label ID="lblFilhos" runat="server"></asp:Label></td>
            <td><b>Recebe Seg.Defeso:</b> <asp:Label ID="lbldefeso" runat="server"></asp:Label></td>
            <td><b>Recebe Bolsa Familia: </b><asp:Label ID="lblBolsaFam" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><b>Possui Casa Própria:</b> <asp:Label ID="lbltipoResid" runat="server"></asp:Label></td>
            <td><b>Água Encanada:</b> <asp:Label ID="lblAgua" runat="server"></asp:Label></td>
            <td><b>Energia Eletrica:</b> <asp:Label ID="lblEnergia" runat="server"></asp:Label></td>
            <td><b>Possui Telefone:</b> <asp:Label ID="lblTelefone" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><b>Possui Rede de Esgoto:</b> <asp:Label ID="lblEsgoto" runat="server"></asp:Label></td>
            <td><b>Computador com Internet:</b> <asp:Label ID="lblComputador" runat="server"></asp:Label></td>
            <td><b>Quantas Pessoas Mora na Residencia:</b> <asp:Label ID="lblPessoas" runat="server"></asp:Label></td>
            <td><b>Quantos Menores:</b> <asp:Label ID="lblMenores" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><b>Algum Aposentado:</b> <asp:Label ID="lblaposentado" runat="server"></asp:Label></td>
            <td><b>Renda mensal na atividade:</b> <asp:Label ID="lblrendaAtiv" runat="server"></asp:Label></td>
            <td><b>Exerce outra Atividade:</b> <asp:Label ID="lblOutraAtiv" runat="server"></asp:Label></td>
            <td><b>Renda Mensal na Outra Atividade:</b> <asp:Label ID="lblrendaOutra" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><b>Quantos Recebem Seguro Defeso:</b> <asp:Label ID="lblquantDefeso" runat="server"></asp:Label></td>
            <td><b>Quantos Recebem Bolsa Familia: </b><asp:Label ID="lblquantBolsa" runat="server"></asp:Label></td>
            <td><b>Total Renda Familiar: </b><asp:Label ID="lblTotalRenda" runat="server"></asp:Label></td>
            <td><b>Quanto tempo é associado na Colônia:</b> <asp:Label ID="lbltempocolonia" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><b>Esta em dias com as mensalidades:</b> <asp:Label ID="lblemdias" runat="server"></asp:Label></td>
            <td><b>Valor da Mensalidade:</b> <asp:Label ID="lblMensalidade" runat="server"></asp:Label></td>
            <td><b>Está Inadimplete? Porque ?:</b> <asp:Label ID="lblinadimp" runat="server"></asp:Label></td>
            <td><b>Esta satisfeito?: </b><asp:Label ID="lblsatisfeito" runat="server"></asp:Label></td>
        </tr>
    </table>

    <table style="width:100%">
        <tr>
            <td><b>Opnião sobre melhoria do atendimento:</b><asp:Label ID="lblOpniao" runat="server"></asp:Label></td>
        </tr>
    </table>

    <h4>DECLARAÇÃO DE EXERCÍCIOS DA ATIVIDADE</h4>
    
    <p>Declaramos, sob responsabilidade civil e penal, que as informações prestadas neste formulário de recadastramento de pescadores(as)</p>
    <p>são verdadeiras e que estamos cientes de que informações não verídicas declaradas, implicarão em penalidades previstas no artigo </p>
    <p>299 do Código Penal (falsidade ideológica) além de outras sanções civis e administrativas cabíveis.</p>
    <br />
    <p><asp:Label ID="lblCidade" runat="server"></asp:Label> - <asp:Label ID="lblUFColonia" runat="server"></asp:Label>, <asp:Label ID="lbldataemissao" runat="server"></asp:Label> </p>
    <br />

    <p>_____________________________________________________</p>
    <p>Assinatura do associado</p>
    
    <br />
    <p>Testemunhas</p>
    <br />
    
    <p>1.___________________________________________________</p>
    <p>  Nome e Asinatura</p>
    <p>  RG: ______________________RGP:______________________</p>
    <br />

    <p>2.__________________________________________________</p>
    <p>  Nome e Asinatura</p>
    <p>  RG: ______________________RGP:_____________________</p>
    <br />

    <p>____________________________________________________</p>
    <p>Assinatura e nome do Entrevistador</p>



</asp:Content>
