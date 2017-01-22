<%@ Page Title="Associado - Alteração de Cadastro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastro_Alterar.aspx.cs" Inherits="Pescadores.Cadastro_Alterar" %>

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
    
    <h4>Associado: <asp:Label ID="lblNomeAssoc" runat="server" ></asp:Label> - ID: <asp:Label ID="lblIDAssoc" runat="server" ></asp:Label></h4>

    <!-- Camera - necessário https -->
    <br />
    <div id="results"></div>
    <div id="my_camera"></div>

    <br />
    <div class="row">
        <div class="col-sm-6">
            <label for="filePicker">Carregar Foto existente:</label><br>
            <input type="file" id="filePicker">
        </div>
        <div class="col-sm-6">    
            <label for="btwebcam">WebCam:</label><br>   
            <input id="btwebcam" type=button value="Ativar WebCam" onClick="AtivarWebCam()">
            <input type=button value="Capturar imagem" onClick="take_snapshot()">
        </div>
    </div>

    <h3> IDENTIFICAÇÃO DO ASSOCIADO</h3>
    <!-- 01 - Cabeçalho -->
    <div class="row">
        <div class="col-sm-2">
            <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label4" runat="server" Text="Apelido"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label2" runat="server" Text="Endereco"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label3" runat="server" Text="Bairro"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label6" runat="server" Text="CEP"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label5" runat="server" Text="Municipio"></asp:Label>
        </div>
    </div>
    <!-- 01 - Campos -->
    <div class="row">
        <div class="col-sm-2">
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtApelido" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtEndereco" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtBairro" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtCEP" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtMunicipio" runat="server"></asp:TextBox>
        </div>
    </div>  

    <!-- 02 - Cabeçalho -->
    <div class="row">
        <div class="col-sm-2">
            <asp:Label ID="Label7" runat="server" Text="Filiação-Pai"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label8" runat="server" Text="Filiação-Mãe"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label9" runat="server" Text="Nascimento"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label10" runat="server" Text="Naturalidade"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label11" runat="server" Text="Nacionalidade"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label12" runat="server" Text="Escolaridade"></asp:Label>
        </div>
    </div>
    <!-- 02 - Campos -->
    <div class="row">
        <div class="col-sm-2">
            <asp:TextBox ID="txtPai" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtMae" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtNascimento" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtNaturalidade" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtNacionalidade" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtEscolaridade" runat="server"></asp:TextBox>
        </div>
    </div>  

    <!-- 03 - Cabeçalho -->
    <div class="row">
        <div class="col-sm-2">
            <asp:Label ID="Label13" runat="server" Text="CPF"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label14" runat="server" Text="RG"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label15" runat="server" Text="Org.Emissor"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label16" runat="server" Text="D.Emissão"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label17" runat="server" Text="PIS"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label18" runat="server" Text="NIT"></asp:Label>
        </div>
    </div>
    <!-- 03 - Campos -->
    <div class="row">
        <div class="col-sm-2">
            <asp:TextBox ID="txtCPF" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtRG" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtEmissor" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtEmissao" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtPIS" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtNIT" runat="server"></asp:TextBox>
        </div>
    </div>  

    <!-- 04 - Cabeçalho -->
    <div class="row">
        <div class="col-sm-2">
            <asp:Label ID="Label19" runat="server" Text="Titulo"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label22" runat="server" Text="CEI"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label23" runat="server" Text="Est.Civil"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label24" runat="server" Text="Telefone"></asp:Label>
        </div>
    </div>
    <!-- 04 - Campos -->
    <div class="row">
        <div class="col-sm-2">
            <asp:TextBox ID="txtTitulo" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtCEI" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtEstCivil" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
        </div>
    </div>  

    <!-- 05 - Cabeçalho -->
    <div class="row">
        <div class="col-sm-2">
            <asp:Label ID="Label25" runat="server" Text="e-mail"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label26" runat="server" Text="Sexo"></asp:Label>
        </div>
    </div>
    <!-- 05 - Campos -->
    <div class="row">
        <div class="col-sm-2">
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtsexo" runat="server"></asp:TextBox>
        </div>
    </div> 

    <h3> INFORMAÇÕES PROFISSIONAIS</h3>
    <!-- 06 - Cabeçalho -->
    <div class="row">
        <div class="col-sm-2">
            <asp:Label ID="Label28" runat="server" Text="CTPS"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label29" runat="server" Text="RGP Atual"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label30" runat="server" Text="Data 1o.Registro"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label31" runat="server" Text="Emissor"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label32" runat="server" Text="Profissão"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label33" runat="server" Text="Categoria"></asp:Label>
        </div>
    </div>
    <!-- 06 - Campos -->
    <div class="row">
        <div class="col-sm-2">
            <asp:TextBox ID="txtCTPS" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtRGPAtual" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtRGPRegistro" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtRGPEmissor" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtProf" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtCat" runat="server"></asp:TextBox>
        </div>
    </div>  

    <!-- 07 - Cabeçalho -->
    <div class="row">
        <div class="col-sm-2">
            <asp:Label ID="Label27" runat="server" Text="Área Atuação"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label34" runat="server" Text="Relação de Trabalho"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label35" runat="server" Text="Ut.Embarc.na Atividade?"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label36" runat="server" Text="Nome da Embarcação"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label37" runat="server" Text="Propietário"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label38" runat="server" Text="Tipo"></asp:Label>
        </div>
    </div>
    <!-- 07 - Campos -->
    <div class="row">
        <div class="col-sm-2">
            <asp:TextBox ID="txtAtuacao" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtRelacao" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtutilizaEmbarca" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtNomeEmbarca" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtPropietario" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtTipo" runat="server"></asp:TextBox>
        </div>
    </div>  

     <!-- 08 - Cabeçalho -->
    <div class="row">
        <div class="col-sm-2">
            <asp:Label ID="Label39" runat="server" Text="Tamanho"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label40" runat="server" Text="Propulsão"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label41" runat="server" Text="Reg.Cap.Portos"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label42" runat="server" Text="N.RGP/MPA"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label43" runat="server" Text="Principais Artes Pesca"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label44" runat="server" Text="Dono das artes"></asp:Label>
        </div>
    </div>
    <!-- 08 - Campos -->
    <div class="row">
        <div class="col-sm-2">
            <asp:TextBox ID="txtTamanho" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtProp" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtCapitania" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtRGPMPA" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtArtes" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtDonoArtes" runat="server"></asp:TextBox>
        </div>
    </div> 

     <!-- 09 - Cabeçalho -->
    <div class="row">
        <div class="col-sm-2">
            <asp:Label ID="Label45" runat="server" Text="Principais Esp.Capturadas"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label46" runat="server" Text="Locais Venda Prod."></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label47" runat="server" Text="Como é Comercializado"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label48" runat="server" Text="Dias Trab.Mês"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label49" runat="server" Text="Duração/dia p/pescaria"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label50" runat="server" Text="Produção Media Diária"></asp:Label>
        </div>
    </div>
    <!-- 09 - Campos -->
    <div class="row">
        <div class="col-sm-2">
            <asp:TextBox ID="txtPRincipais" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtLocais" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtComoComerc" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtDiasTrab" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtDuracao" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtProdMedia" runat="server"></asp:TextBox>
        </div>
    </div> 

    <!-- 10 - Cabeçalho -->
    <div class="row">
        <div class="col-sm-2">
            <asp:Label ID="Label51" runat="server" Text="Valor Venda Produto"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label52" runat="server" Text="Quant.Produto Consumido"></asp:Label>
        </div>
    </div>
    <!-- 10 - Campos -->
    <div class="row">
        <div class="col-sm-2">
            <asp:TextBox ID="txtVEndaPRod" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtQuantConsumido" runat="server"></asp:TextBox>
        </div>
    </div> 

    <h3> INFORMAÇÕES SÓCIO-ECONÔMICAS</h3>
    <!-- 11 - Cabeçalho -->
    <div class="row">
        <div class="col-sm-2">
            <asp:Label ID="Label53" runat="server" Text="Dependentes"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label54" runat="server" Text="Filhos na escola"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label55" runat="server" Text="Recebe Seg. Defeso"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label56" runat="server" Text="Recebe Bolsa Fam."></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label57" runat="server" Text="Possui Casa Propia"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label58" runat="server" Text="Agua Encanada"></asp:Label>
        </div>
    </div>
    <!-- 11 - Campos -->
    <div class="row">
        <div class="col-sm-2">
            <asp:TextBox ID="txtDependentes" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtfilhosescola" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtsegdefeso" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtBolsafamilia" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtCasaPropia" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtAguaEncan" runat="server"></asp:TextBox>
        </div>
    </div>  

    <!-- 12 - Cabeçalho -->
    <div class="row">
        <div class="col-sm-2">
            <asp:Label ID="Label59" runat="server" Text="Energia Eletrica"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label60" runat="server" Text="Telefone"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label61" runat="server" Text="Rede de Esgoto"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label62" runat="server" Text="Computador"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label63" runat="server" Text="Quant.Pessoas Resid."></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label64" runat="server" Text="Quant.Menores"></asp:Label>
        </div>
    </div>
    <!-- 11 - Campos -->
    <div class="row">
        <div class="col-sm-2">
            <asp:TextBox ID="txtpossuiEnergia" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtpossuiTelefone" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtpossuiEsgoto" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtPossuiCOmput" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtQuantPessoas" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtQuantMenores" runat="server"></asp:TextBox>
        </div>
    </div>  

    <!-- 13 - Cabeçalho -->
    <div class="row">
        <div class="col-sm-2">
            <asp:Label ID="Label65" runat="server" Text="Algum Aposentado"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label66" runat="server" Text="Renda na Atividade"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label67" runat="server" Text="Exerce Outra Atividade"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label68" runat="server" Text="Renda Outra Atividade"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label69" runat="server" Text="Q.Recebem Seg.Defeso"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label70" runat="server" Text="Q.Recebem Bolsa Familia"></asp:Label>
        </div>
    </div>
    <!-- 13 - Campos -->
    <div class="row">
        <div class="col-sm-2">
            <asp:TextBox ID="txtAposentado" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtRendaAtividade" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="TxtExerceOutra" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtRendaOutra" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtVAlorDefeso" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtValorBolsaFam" runat="server"></asp:TextBox>
        </div>
    </div>  

    <!-- 14 - Cabeçalho -->
    <div class="row">
        <div class="col-sm-2">
            <asp:Label ID="Label71" runat="server" Text="Total Renda Familiar"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label72" runat="server" Text="Tempo Associado"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label73" runat="server" Text="Esta em Dias"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label74" runat="server" Text="Valor Mensalidade"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label75" runat="server" Text="Motivo Inadimplência"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="Label76" runat="server" Text="Satisfeito"></asp:Label>
        </div>
    </div>
    <!-- 14 - Campos -->
    <div class="row">
        <div class="col-sm-2">
            <asp:TextBox ID="txtRendaFamil" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtTempoAssoc" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtEmdias" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtValorMens" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtMotivoInadimp" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2">
            <asp:TextBox ID="txtSatisfeito" runat="server"></asp:TextBox>
        </div>
    </div>  

    <!-- 15 - Cabeçalho -->
    <div class="row">
        <div class="col-sm-4 col-md-12">
            <asp:Label ID="Label77" runat="server" Text="Opnião melhoria atendimento"></asp:Label>
        </div>
    </div>
    <!-- 15 - Campos -->
    <asp:TextBox ID="txtOpniao" runat="server" Width="1600px"></asp:TextBox>

    <p></p>
    <asp:Button ID="Button1" runat="server" Text="Salvar" OnClick="BtSalvar" />    

    <input id="Hidden1" name="fotouri" type="hidden" />

    <script type="text/javascript" src="Scripts/webcam.js"></script>

    <script language="JavaScript">

        var handleFileSelect = function (evt) {
            var files = evt.target.files;
            var file = files[0];
            if (files && file) {
                var reader = new FileReader();
                reader.onload = function (readerEvt) {
                    var binaryString = readerEvt.target.result;
                    var data_uri = "data:image/png;base64," + btoa(binaryString);
                    document.getElementById('results').innerHTML = '<img src="' + data_uri + '"/>';
                    document.getElementById("Hidden1").value = data_uri
                };
                reader.readAsBinaryString(file);
            }
        };

        if (window.File && window.FileReader && window.FileList && window.Blob) {
            document.getElementById('filePicker').addEventListener('change', handleFileSelect, false);
        } else {
            alert('Favor atualizar versão do browser!');
        }

        function AtivarWebCam() {
            Webcam.set({
                width: 160,
                height: 120,
                image_format: 'png'
            });
            Webcam.attach('#my_camera');
        }

        function take_snapshot() {
            // take snapshot and get image data
            Webcam.snap(function (data_uri) {
                // display results in page
                document.getElementById('results').innerHTML = '<img src="' + data_uri + '"/>';
                document.getElementById("Hidden1").value = data_uri
            });
            Webcam.reset()
        }

    </script>

</asp:Content>
