<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroCorpo.aspx.cs" Inherits="Pescadores.CadastroCorpo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="~/Content/bootstrap.min.css">
    <script src="~/Scripts/jquery.min.js"></script>
    <script src="~/Scripts/bootstrap.min.js"></script>

    <style type="text/css">
        #results {
            float: right;
            margin: 5px;
            padding: 5px;
            border: 1px solid;
            background: #ccc;
        }

        form {
            background: #ccc;
            margin-top: 5%;
            margin-right: 5%;
            margin-left: 5%;
        }
    </style>

</head>

<body>
    <br />
    <form class="form-horizontal">
        <fieldset>
            <legend>IDENTIFICAÇÃO DO ASSOCIADO</legend>

            <div class="form-group">
                <label for="txtNome" class="col-md-1 control-label">Nome</label>
                <div class="col-md-7">
                    <input type="text" class="form-control" id="txtNome" name="txtNome">
                </div>
                <label for="txtApelido" class="col-md-1 control-label">Apelido</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtApelido" name="txtApelido">
                </div>
            </div>

            <div class="form-group">
                <label for="txtEndereco" class="col-md-1 control-label">Endereço</label>
                <div class="col-md-7">
                    <input type="text" class="form-control" id="txtEndereco" name="txtEndereco">
                </div>
                <label for="txtCEP" class="col-md-1 control-label">CEP</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtCEP" name="txtCEP">
                </div>
            </div>

            <div class="form-group">
                <label for="txtBairro" class="col-md-1 control-label">Bairro</label>
                <div class="col-md-5">
                    <input type="text" class="form-control" id="txtBairro" name="txtBairro">
                </div>
                <label for="txtMunicipio" class="col-md-1 control-label">Municipio</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtMunicipio" name="txtMunicipio">
                </div>
                <label for="txtUF" class="col-md-1 control-label">Estado</label>
                <div class="col-md-1">
                    <input type="text" class="form-control" id="txtUF" name="txtUF">
                </div>
            </div>

            <div class="form-group">
                <label for="txtPai" class="col-md-1 control-label">Pai</label>
                <div class="col-md-5">
                    <input type="text" class="form-control" id="txtPai" name="txtPai">
                </div>
                <label for="txtMae" class="col-md-1 control-label">Mãe</label>
                <div class="col-md-5">
                    <input type="text" class="form-control" id="txtMae" name="txtMae">
                </div>
            </div>

            <div class="form-group">
                <label for="txtNascimento" class="col-md-1 control-label">Nascimento</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtNascimento" name="txtNascimento">
                </div>

                <label for="txtNaturalidade" class="col-md-1 control-label">Naturalidade</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtNaturalidade" name="txtNaturalidade">
                </div>

                <label for="txtNacionalidade" class="col-md-1 control-label">Nacionalidade</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtNacionalidade" name="txtNacionalidade">
                </div>

                <label for="txtEscolaridade" class="col-md-1 control-label">Escolaridade</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtEscolaridade" name="txtEscolaridade">
                </div>
            </div>

            <div class="form-group">
                <label for="txtCPF" class="col-md-1 control-label">CPF</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtCPF" name="txtCPF">
                </div>

                <label for="txtRG" class="col-md-1 control-label">RG</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtRG" name="txtRG">
                </div>

                <label for="txtEmissor" class="col-md-1 control-label">Org.Emissor</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtEmissor" name="txtEmissor">
                </div>

                <label for="txtEmissao" class="col-md-1 control-label">D.Emissao</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtEmissao" name="txtEmissao">
                </div>
            </div>

            <div class="form-group">
                <label for="txtTitulo" class="col-md-1 control-label">Titulo</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtTitulo" name="txtTitulo">
                </div>

                <label for="txtPIS" class="col-md-1 control-label">PIS</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtPIS" name="txtPIS">
                </div>

                <label for="txtNIT" class="col-md-1 control-label">NIT</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtNIT" name="txtNIT">
                </div>

                <label for="txtCEI" class="col-md-1 control-label">CEI</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtCEI" name="txtCEI">
                </div>
            </div>

            <div class="form-group">
                <label for="txtEstCivil" class="col-md-1 control-label">Est.Civil</label>
                <div class="col-md-2">
                    <select class="form-control" id="txtEstCivil" name="txtEstCivil">
                        <option>SOLTEIRO(A)</option>
                        <option>CASADO(A)</option>
                        <option>DIVORCIADO(A)</option>
                        <option>OUTRO</option>
                    </select>
                </div>

                <label for="txtTelefone" class="col-md-1 control-label">Telefone</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtTelefone" name="txtTelefone">
                </div>

                <label for="txtemail" class="col-md-1 control-label">E-mail</label>
                <div class="col-md-3">
                    <input type="text" class="form-control" id="txtemail" name="txtemail">
                </div>

                <label for="txtsexo" class="col-md-1 control-label">Sexo</label>
                <div class="col-md-1">
                    <select class="form-control" id="txtsexo" name="txtsexo">
                        <option>M</option>
                        <option>F</option>
                    </select>
                </div>
            </div>

            <br />
            <legend>INFORMAÇÕES PROFISSIONAIS</legend>

            <div class="form-group">
                <label for="txtCTPS" class="col-md-1 control-label">CTPS</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtCTPS" name="txtCTPS">
                </div>

                <label for="txtRGPAtual" class="col-md-1 control-label">RGP Atual</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtRGPAtual" name="txtRGPAtual">
                </div>

                <label for="txtRGPRegistro" class="col-md-1 control-label">1o.Registro</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtRGPRegistro" name="txtRGPRegistro">
                </div>

                <label for="txtRGPEmissor" class="col-md-1 control-label">Órgão Emissor</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtRGPEmissor" name="txtRGPEmissor">
                </div>
            </div>

            <div class="form-group">
                <label for="txtProf" class="col-md-1 control-label">Profissão</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtProf" name="txtProf">
                </div>

                <label for="txtCat" class="col-md-1 control-label">Categoria</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtCat" name="txtCat">
                </div>

                <label for="txtAtuacao" class="col-md-1 control-label">Área Atuação</label>
                <div class="col-md-5">
                    <input type="text" class="form-control" id="txtAtuacao" name="txtAtuacao">
                </div>
            </div>

            <div class="form-group">
                <label for="selectRelacao" class="col-md-2 control-label">Relação de Trabalho</label>
                <div class="col-md-4">
                    <select class="form-control" id="selectRelacao" name="selectRelacao">
                        <option>PARCEIRO/MEEIRO</option>
                        <option>INDIVIDUAL</option>
                        <option>REGIME DE ECONOMIA FAMILIAR</option>
                    </select>
                </div>

                <label for="selectutilizaEmbarca" class="col-md-3 control-label">Utiliza Embarcação na Atividade</label>
                <div class="col-md-2">
                    <select class="form-control" id="selectutilizaEmbarca" name="selectutilizaEmbarca">
                        <option>SIM</option>
                        <option>NÃO</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="txtNomeEmbarca" class="col-md-2 control-label">Nome Embarcação</label>
                <div class="col-md-3">
                    <input type="text" class="form-control" id="txtNomeEmbarca" name="txtNomeEmbarca">
                </div>

                <label for="txtPropietario" class="col-md-1 control-label">Propietário</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtPropietario" name="txtPropietario">
                </div>

                <label for="txtTipo" class="col-md-1 control-label">Tipo</label>
                <div class="col-md-1">
                    <input type="text" class="form-control" id="txtTipo" name="txtTipo">
                </div>

                <label for="txtTamanho" class="col-md-1 control-label">Tamanho</label>
                <div class="col-md-1">
                    <input type="text" class="form-control" id="txtTamanho" name="txtTamanho">
                </div>
            </div>

            <div class="form-group">
                <label for="txtProp" class="col-md-2 control-label">Propulsão</label>
                <div class="col-md-3">
                    <input type="text" class="form-control" id="txtProp" name="txtProp">
                </div>
                <label for="txtCapitania" class="col-md-2 control-label">N. Registro Cap.Portos</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtCapitania" name="txtCapitania">
                </div>
                <label for="txtRGPMPA" class="col-md-1 control-label">RGP/MPA</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtRGPMPA" name="txtRGPMPA">
                </div>
            </div>

            <div class="form-group">
                <label for="txtArtes" class="col-md-2 control-label">Principais artes de pesca utilizadas</label>
                <div class="col-md-4">
                    <select class="form-control" id="txtArtes" name="txtArtes">
                        <option>REDE DE ESPERA</option>
                        <option>REDE BOIADA/RESSA</option>
                        <option>ARRASTO/BALÃO</option>
                        <option>REDINHA ARRASTO MANUAL</option>
                        <option>LINHA COM ANZOL</option>
                        <option>ESPINHEL</option>
                        <option>GERERÉ/PUÇÁ</option>
                        <option>MUNZUÁ</option>
                        <option>COVO</option>
                        <option>GROZEIRA</option>
                        <option>OUTROS</option>
                    </select>
                </div>
                <label for="txtDonoArtes" class="col-md-2 control-label">Dono das artes que você trabalha</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtDonoArtes" name="txtDonoArtes">
                </div>
            </div>

            <div class="form-group">
                <label for="txtProp" class="col-md-2 control-label">Principais Espécies Capturadas</label>
                <div class="col-md-4">
                    <input type="text" class="form-control" id="txtPRincipais" name="txtPRincipais">
                </div>
                <label for="txtCapitania" class="col-md-2 control-label">Locais de venda da produção</label>
                <div class="col-md-4">
                    <input type="text" class="form-control" id="txtLocais" name="txtLocais">
                </div>
            </div>

            <div class="form-group">
                <label for="txtComoComerc" class="col-md-2 control-label">Como o produto é comercializado</label>
                <div class="col-md-4">
                    <select class="form-control" id="txtComoComerc" name="txtComoComerc">
                        <option>FRESCO</option>
                        <option>RESFRIADO</option>
                        <option>CONGELADO</option>
                        <option>SALGADO</option>
                        <option>DEFUMADO</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="txtDiasTrab" class="col-md-2 control-label">Quantos dias trabalha / mês</label>
                <div class="col-md-1">
                    <input type="text" class="form-control" id="txtDiasTrab" name="txtDiasTrab">
                </div>

                <label for="txtDuracao" class="col-md-2 control-label">Duração p/ dia por pescaria</label>
                <div class="col-md-1">
                    <input type="text" class="form-control" id="txtDuracao" name="txtDuracao">
                </div>

                <label for="txtProdMedia" class="col-md-2 control-label">Produção média diária</label>
                <div class="col-md-1">
                    <input type="text" class="form-control" id="txtProdMedia" name="txtProdMedia">
                </div>
            </div>

            <div class="form-group">
                <label for="txtVEndaPRod" class="col-md-2 control-label">Valor de venda do produto</label>
                <div class="col-md-1">
                    <input type="text" class="form-control" id="txtVEndaPRod" name="txtVEndaPRod">
                </div>

                <label for="txtQuantConsumido" class="col-md-2 control-label">Quant. do produto consumido </label>
                <div class="col-md-1">
                    <input type="text" class="form-control" id="txtQuantConsumido" name="txtQuantConsumido">
                </div>
            </div>


            <br />
            <legend>INFORMAÇÕES SÓCIO ECONÔMICAS</legend>

            <div class="form-group">
                <label for="txtDependentes" class="col-md-2 control-label">Dependentes, quantos</label>
                <div class="col-md-1">
                    <input type="text" class="form-control" id="txtDependentes" name="txtDependentes">
                </div>

                <label for="txtfilhosescola" class="col-md-2 control-label">Filhos na escola</label>
                <div class="col-md-1">
                    <input type="text" class="form-control" id="txtfilhosescola" name="txtfilhosescola">
                </div>

                <label for="txtsegdefeso" class="col-md-2 control-label">Recebe Seguro Defeso</label>
                <div class="col-md-1">
                    <input type="text" class="form-control" id="txtsegdefeso" name="txtsegdefeso">
                </div>

                <label for="txtBolsafamilia" class="col-md-2 control-label">Recebe Bolsa Familia</label>
                <div class="col-md-1">
                    <input type="text" class="form-control" id="txtBolsafamilia" name="txtBolsafamilia">
                </div>
            </div>

            <div class="form-group">
                <label for="txtCasaPropia" class="col-md-2 control-label">Possui Casa Propia</label>
                <div class="col-md-4">
                    <select class="form-control" id="txtCasaPropia" name="txtCasaPropia">
                        <option>ALUGADA</option>
                        <option>MORA COM OS PAIS</option>
                        <option>MORA COM OS FILHOS</option>
                    </select>
                </div>
            </div>

            <br />

            <legend>FOTO</legend>
            <!-- Camera -->
            <br />
            <div id="results"></div>
            <div id="my_camera"></div>
            <br />
            <div class="row">
                <div class="col-md-1">
                </div>
                <div class="col-md-4">
                    <label for="filePicker">Carregar Foto existente:</label><br>
                    <input type="file" id="filePicker">
                </div>
                <div class="col-md-4">
                    <label for="btwebcam">WebCam:</label><br>
                    <input id="btwebcam" type="button" value="Ativar WebCam" onclick="AtivarWebCam()">
                    <input type="button" value="Capturar imagem WebCam" onclick="take_snapshot()">
                </div>
            </div>
            <input id="Hidden1" name="fotouri" type="hidden" />
            <!-- Camera -->

            <legend></legend>

            <div class="form-group">
                <div class="col-md-8 col-md-offset-1">
                    <button type="reset" class="btn btn-primary" onclick="cancelar()">Cancelar</button>
                    <button type="button" class="btn btn-success" onclick="salvar()">Salvar</button>
                </div>
            </div>

        </fieldset>
    </form>

    <!-- Scripts Camera -->
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
            alert('The File APIs are not fully supported in this browser.');
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
    <!-- Scripts Camera -->

    <!-- Scripts Diversos -->
    <script language="JavaScript">

        document.getElementById("txtNome").focus();

        function salvar() {
            alert("Em Desenvolvimento");
        }
        function cancelar() {
            window.parent.location.href = "Default.aspx";
        }
    </script>

</body>
</html>
