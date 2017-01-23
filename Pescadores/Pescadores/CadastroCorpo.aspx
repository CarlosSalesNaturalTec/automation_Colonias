<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroCorpo.aspx.cs" Inherits="Pescadores.CadastroCorpo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="~/Content/bootstrap.min.css">
    <script type="text/javascript" src="Scripts/jquery-3.1.1.min.js"></script>

    <style type="text/css">
        #results {
            float: right;
            margin: 5px;
            padding: 5px;
            border: 1px solid;
            background: #ccc;
        }

        form {
            background: #B0E2FF;
            margin-top: 1%;
            margin-right: 1%;
            margin-left: 1%;
        }
    </style>

</head>

<body runat="server">

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
                    <input type="text" class="form-control" id="txtUF" name="txtUF" value="BA">
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
                    <input type="date" class="form-control" id="txtEmissao" name="txtEmissao">
                </div>
            </div>

            <div class="form-group">
                <label for="txtTitulo" class="col-md-1 control-label">Titulo Zona Setor</label>
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

                <label for="txtCEI" class="col-md-1 control-label">Matrúcula CEI</label>
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
                <label for="txtCTPS" class="col-md-1 control-label">No. da CTPS</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtCTPS" name="txtCTPS">
                </div>

                <label for="txtRGPAtual" class="col-md-1 control-label">No. do RGP Atual</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtRGPAtual" name="txtRGPAtual">
                </div>

                <label for="txtRGPRegistro" class="col-md-1 control-label">Data do 1o. Registro</label>
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
                <div class="col-md-4">
                    <input type="text" class="form-control" id="txtNomeEmbarca" name="txtNomeEmbarca">
                </div>

                <label for="txtPropietario" class="col-md-2 control-label">Propietário</label>
                <div class="col-md-4">
                    <input type="text" class="form-control" id="txtPropietario" name="txtPropietario">
                </div>
            </div>

            <div class="form-group">
                <label for="txtTipo" class="col-md-2 control-label">Tipo</label>
                <div class="col-md-4">
                    <input type="text" class="form-control" id="txtTipo" name="txtTipo">
                </div>

                <label for="txtTamanho" class="col-md-2 control-label">Tamanho</label>
                <div class="col-md-4">
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
                <label for="txtQuantArtes" class="col-md-2 control-label">Quantidade das artes de pesca</label>
                <div class="col-md-4">
                    <input type="text" class="form-control" id="txtQuantArtes" name="txtQuantArtes">
                </div>
            </div>

            <div class="form-group">
                <label for="txtDonoArtes" class="col-md-2 control-label">Dono das artes que você trabalha</label>
                <div class="col-md-4">
                    <input type="text" class="form-control" id="txtDonoArtes" name="txtDonoArtes">
                </div>

                <label for="txtProp" class="col-md-2 control-label">Principais Espécies Capturadas</label>
                <div class="col-md-4">
                    <input type="text" class="form-control" id="txtPRincipais" name="txtPRincipais">
                </div>
            </div>

            <div class="form-group">
                <label for="txtCapitania" class="col-md-2 control-label">Locais de venda da produção</label>
                <div class="col-md-4">
                    <input type="text" class="form-control" id="txtLocais" name="txtLocais">
                </div>

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
                    <input type="number" class="form-control" id="txtDiasTrab" name="txtDiasTrab" value="0">
                </div>

                <label for="txtDuracao" class="col-md-2 control-label">Duração p/ dia por pescaria</label>
                <div class="col-md-1">
                    <input type="text" class="form-control" id="txtDuracao" name="txtDuracao">
                </div>

                <label for="txtProdMedia" class="col-md-2 control-label">Produção média diária (Kg)</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtProdMedia" name="txtProdMedia">
                </div>
            </div>

            <div class="form-group">
                <label for="txtVEndaPRod" class="col-md-2 control-label">Valor de venda do produto (Kg)</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtVEndaPRod" name="txtVEndaPRod">
                </div>

                <label for="txtQuantConsumido" class="col-md-2 control-label">Quant. do produto consumido (Kg)</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtQuantConsumido" name="txtQuantConsumido">
                </div>
            </div>


            <br />
            <legend>INFORMAÇÕES SÓCIO ECONÔMICAS</legend>

            <div class="form-group">
                <label for="txtDependentes" class="col-md-2 control-label">Dependentes, quantos</label>
                <div class="col-md-1">
                    <input type="number" class="form-control" id="txtDependentes" name="txtDependentes" value="0">
                </div>

                <label for="txtfilhosescola" class="col-md-2 control-label">Filhos na escola</label>
                <div class="col-md-1">
                    <input type="number" class="form-control" id="txtfilhosescola" name="txtfilhosescola" value="0">
                </div>

                <label for="txtsegdefeso" class="col-md-2 control-label">Recebe Seguro Defeso</label>
                <div class="col-md-1">
                    <select class="form-control" id="txtsegdefeso" name="txtsegdefeso">
                        <option>NÃO</option>
                        <option>SIM</option>
                    </select>
                </div>

                <label for="txtBolsafamilia" class="col-md-2 control-label">Recebe Bolsa Familia</label>
                <div class="col-md-1">
                    <select class="form-control" id="txtBolsafamilia" name="txtBolsafamilia">
                        <option>NÃO</option>
                        <option>SIM</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="txtCasaPropia" class="col-md-2 control-label">Possui Casa Propia</label>
                <div class="col-md-4">
                    <select class="form-control" id="txtCasaPropia" name="txtCasaPropia">
                         <option>SIM</option>
                        <option>ALUGADA</option>
                        <option>MORA COM OS PAIS</option>
                        <option>MORA COM OS FILHOS</option>
                    </select>
                </div>
                <label for="txtAguaEncan" class="col-md-2 control-label">Água encanada na residência</label>
                <div class="col-md-4">
                    <select class="form-control" id="txtAguaEncan" name="txtAguaEncan">
                        <option>NÃO</option>
                        <option>SIM</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="txtpossuiEnergia" class="col-md-2 control-label">Energia Elétrica</label>
                <div class="col-md-4">
                    <select class="form-control" id="txtpossuiEnergia" name="txtpossuiEnergia">
                        <option>NÃO</option>
                        <option>SIM</option>
                    </select>
                </div>
                <label for="txtpossuiTelefone" class="col-md-2 control-label">Telefone</label>
                <div class="col-md-4">
                    <select class="form-control" id="txtpossuiTelefone" name="txtpossuiTelefone">
                        <option>NÃO</option>
                        <option>SIM</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="txtpossuiEsgoto" class="col-md-2 control-label">Rede de Esgoto na residência</label>
                <div class="col-md-4">
                    <select class="form-control" id="txtpossuiEsgoto" name="txtpossuiEsgoto">
                        <option>NÃO</option>
                        <option>SIM</option>
                    </select>
                </div>
                <label for="txtPossuiCOmput" class="col-md-2 control-label">Computador com Internet</label>
                <div class="col-md-4">
                    <select class="form-control" id="txtPossuiCOmput" name="txtPossuiCOmput">
                        <option>NÃO</option>
                        <option>SIM</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="txtQuantPessoas" class="col-md-2 control-label">Quantas pessoas moram na residência</label>
                <div class="col-md-4">
                     <input type="number" class="form-control" id="txtQuantPessoas" name="txtQuantPessoas" value="0">
                </div>
                <label for="txtQuantMenores" class="col-md-2 control-label">Quantos menores</label>
                <div class="col-md-4">
                    <input type="number" class="form-control" id="txtQuantMenores" name="txtQuantMenores" value="0">
                </div>
            </div>

            <div class="form-group">
                <label for="txtAposentado" class="col-md-2 control-label">Algum aposentado</label>
                <div class="col-md-4">
                    <select class="form-control" id="txtAposentado" name="txtAposentado">
                        <option>NÃO</option>
                        <option>SIM</option>
                    </select>
                </div>
                <label for="txtRendaAtividade" class="col-md-2 control-label">Renda mensal na atividade</label>
                <div class="col-md-4">
                    <input type="number" class="form-control" id="txtRendaAtividade" name="txtRendaAtividade" value="0">
                </div>
            </div>

            <div class="form-group">
                <label for="TxtExerceOutra" class="col-md-2 control-label">Exerce outra atividade? Qual?</label>
                <div class="col-md-4">
                    <input type="text" class="form-control" id="TxtExerceOutra" name="TxtExerceOutra">
                </div>
                <label for="txtRendaOutra" class="col-md-2 control-label">Renda mensal na OUTRA atividade</label>
                <div class="col-md-4">
                    <input type="number" class="form-control" id="txtRendaOutra" name="txtRendaOutra" value="0">
                </div>
            </div>

            <div class="form-group">
                <label for="txtVAlorDefeso" class="col-md-2 control-label">Quantas pessoas recebem Seguro Defeso na residencia</label>
                <div class="col-md-4">
                    <input type="number" class="form-control" id="txtVAlorDefeso" name="txtVAlorDefeso" value="0">
                </div>
                <label for="txtValorBolsaFam" class="col-md-2 control-label">Quantas pessoas recebem Bolsa Familia na residencia</label>
                <div class="col-md-4">
                    <input type="number" class="form-control" id="txtValorBolsaFam" name="txtValorBolsaFam" value="0">
                </div>
            </div>

            <div class="form-group">
                <label for="txtRendaFamil" class="col-md-2 control-label">Total da Renda familiar</label>
                <div class="col-md-4">
                    <input type="number" class="form-control" id="txtRendaFamil" name="txtRendaFamil" value="0">
                </div>
            </div>

            <div class="form-group">
                <label for="txtTempoAssoc" class="col-md-2 control-label">Há quanto tempo é associado na colônia</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtTempoAssoc" name="txtTempoAssoc">
                </div>
                <label for="txtEmdias" class="col-md-2 control-label">Está em dias com suas mensalidades</label>
                <div class="col-md-2">
                    <select class="form-control" id="txtEmdias" name="txtEmdias">
                        <option>NÃO</option>
                        <option>SIM</option>
                    </select>
                </div>
                <label for="txtValorMens" class="col-md-2 control-label">Qual o valor da Mensalidade</label>
                <div class="col-md-2">
                    <input type="number" class="form-control" id="txtValorMens" name="txtValorMens" value="0">
                </div>
            </div>

            <div class="form-group">
                <label for="txtMotivoInadimp" class="col-md-2 control-label">Se inadimplente, porquê?</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtMotivoInadimp" name="txtMotivoInadimp">
                </div>
                <label for="txtSatisfeito" class="col-md-2 control-label">Está satisfeito com os serviços</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="txtSatisfeito" name="txtSatisfeito">
                </div>
            </div>

            <div class="form-group">
                <label for="txtOpniao" class="col-md-2 control-label">O que você sugere para melhorar o atendimento na colônia?</label>
                <div class="col-md-10">
                    <textarea class="form-control" rows="3" id="txtOpniao"></textarea>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-10">
                     <input id="ColoniaHidden" runat="server" type="text"  disabled/>
                     <input id="EmissaoHidden" runat="server" type="text" disabled />
                     <input id="IDHidden" runat="server" type="text" disabled />
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
                    <button type="button" class="btn btn-success" onclick="salvar()" id="btSalvar">Salvar</button>
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

        function salvar(idcol) {

            var v1 = document.getElementById("txtNome").value
            var v2 = document.getElementById("txtApelido").value
            var v3 = document.getElementById("txtEndereco").value
            var v4 = document.getElementById("txtCEP").value
            var v5 = document.getElementById("txtBairro").value
            var v6 = document.getElementById("txtMunicipio").value
            var v7 = document.getElementById("txtUF").value
            var v8 = document.getElementById("txtPai").value
            var v9 = document.getElementById("txtMae").value
            var v10 = document.getElementById("txtNascimento").value

            var v11 = document.getElementById("txtNaturalidade").value
            var v12 = document.getElementById("txtNacionalidade").value
            var v13 = document.getElementById("txtEscolaridade").value
            var v14 = document.getElementById("txtCPF").value
            var v15 = document.getElementById("txtRG").value
            var v16 = document.getElementById("txtEmissor").value
            var v17 = document.getElementById("txtEmissao").value
            var v18 = document.getElementById("txtTitulo").value
            var v19 = document.getElementById("txtPIS").value
            var v20 = document.getElementById("txtNIT").value

            var v21 = document.getElementById("txtCEI").value
            var v22 = document.getElementById("txtEstCivil").value
            var v23 = document.getElementById("txtTelefone").value
            var v24 = document.getElementById("txtemail").value
            var v25 = document.getElementById("txtsexo").value
            var v26 = document.getElementById("txtCTPS").value
            var v27 = document.getElementById("txtRGPAtual").value
            var v28 = document.getElementById("txtRGPRegistro").value
            var v29 = document.getElementById("txtRGPEmissor").value
            var v30 = document.getElementById("txtProf").value

            var v31 = document.getElementById("txtCat").value
            var v32 = document.getElementById("txtAtuacao").value
            var v33 = document.getElementById("selectRelacao").value
            var v34 = document.getElementById("selectutilizaEmbarca").value
            var v35 = document.getElementById("txtNomeEmbarca").value
            var v36 = document.getElementById("txtPropietario").value
            var v37 = document.getElementById("txtTipo").value
            var v38 = document.getElementById("txtTamanho").value
            var v39 = document.getElementById("txtProp").value
            var v40 = document.getElementById("txtCapitania").value

            var v41 = document.getElementById("txtRGPMPA").value
            var v42 = document.getElementById("txtArtes").value
            var v43 = document.getElementById("txtQuantArtes").value
            var v44 = document.getElementById("txtDonoArtes").value
            var v45 = document.getElementById("txtPRincipais").value
            var v46 = document.getElementById("txtLocais").value
            var v47 = document.getElementById("txtComoComerc").value
            var v48 = document.getElementById("txtDiasTrab").value
            var v49 = document.getElementById("txtDuracao").value
            var v50 = document.getElementById("txtProdMedia").value

            var v51 = document.getElementById("txtVEndaPRod").value
            var v52 = document.getElementById("txtQuantConsumido").value
            var v53 = document.getElementById("txtDependentes").value
            var v54 = document.getElementById("txtfilhosescola").value
            var v55 = document.getElementById("txtsegdefeso").value
            var v56 = document.getElementById("txtBolsafamilia").value
            var v57 = document.getElementById("txtCasaPropia").value
            var v58 = document.getElementById("txtAguaEncan").value
            var v59 = document.getElementById("txtpossuiEnergia").value
            var v60 = document.getElementById("txtpossuiTelefone").value

            var v61 = document.getElementById("txtpossuiEsgoto").value
            var v62 = document.getElementById("txtPossuiCOmput").value
            var v63 = document.getElementById("txtQuantPessoas").value
            var v64 = document.getElementById("txtQuantMenores").value
            var v65 = document.getElementById("txtAposentado").value
            var v66 = document.getElementById("txtRendaAtividade").value
            var v67 = document.getElementById("TxtExerceOutra").value
            var v68 = document.getElementById("txtRendaOutra").value
            var v69 = document.getElementById("txtVAlorDefeso").value
            var v70 = document.getElementById("txtValorBolsaFam").value

            var v71 = document.getElementById("txtRendaFamil").value
            var v72 = document.getElementById("txtTempoAssoc").value
            var v73 = document.getElementById("txtEmdias").value
            var v74 = document.getElementById("txtValorMens").value
            var v75 = document.getElementById("txtMotivoInadimp").value
            var v76 = document.getElementById("txtSatisfeito").value
            var v77 = document.getElementById("txtOpniao").value
            var v78 = document.getElementById("Hidden1").value

            var v79 = document.getElementById("IDHidden").value
            var v80 = document.getElementById("ColoniaHidden").value
            var v81 = document.getElementById("EmissaoHidden").value

            var v82 = "Aleluia! Toda Gloria seja dada a Jesus Cristo."

            if (v1 == "") {
                document.getElementById("txtNome").focus();
                alert("Informe Nome do Associado");
                return;
            }

            document.getElementById("btSalvar").disabled = true;
            $("body").css("cursor", "progress");

            $.ajax({
                type: "POST",
                url: "WebService1.asmx/SalvarRegistro",
                data: '{param1: "' + v1 + '", param2: "' + v2 + '", param3: "' + v3 + '", param4: "' + v4 + '", param5: "' + v5 +
                    '", param6: "' + v6 + '", param7: "' + v7 + '", param8: "' + v8 + '", param9: "' + v9 + '", param10: "' + v10 +
                    '", param11: "' + v11 + '", param12: "' + v12 + '", param13: "' + v13 + '", param14: "' + v14 + '", param15: "' + v15 +
                    '", param16: "' + v16 + '", param17: "' + v17 + '", param18: "' + v18 + '", param19: "' + v19 + '", param20: "' + v20 +
                    '", param21: "' + v21 + '", param22: "' + v22 + '", param23: "' + v23 + '", param24: "' + v24 + '", param25: "' + v25 +
                    '", param26: "' + v26 + '", param27: "' + v27 + '", param28: "' + v28 + '", param29: "' + v29 + '", param30: "' + v30 +
                    '", param31: "' + v31 + '", param32: "' + v32 + '", param33: "' + v33 + '", param34: "' + v34 + '", param35: "' + v35 +
                    '", param36: "' + v36 + '", param37: "' + v37 + '", param38: "' + v38 + '", param39: "' + v39 + '", param40: "' + v40 +
                    '", param41: "' + v41 + '", param42: "' + v42 + '", param43: "' + v43 + '", param44: "' + v44 + '", param45: "' + v45 +
                    '", param46: "' + v46 + '", param47: "' + v47 + '", param48: "' + v48 + '", param49: "' + v49 + '", param50: "' + v50 +
                    '", param51: "' + v51 + '", param52: "' + v52 + '", param53: "' + v53 + '", param54: "' + v54 + '", param55: "' + v55 +
                    '", param56: "' + v56 + '", param57: "' + v57 + '", param58: "' + v58 + '", param59: "' + v59 + '", param60: "' + v60 +
                    '", param61: "' + v61 + '", param62: "' + v62 + '", param63: "' + v63 + '", param64: "' + v64 + '", param65: "' + v65 +
                    '", param66: "' + v66 + '", param67: "' + v67 + '", param68: "' + v68 + '", param69: "' + v69 + '", param70: "' + v70 +
                    '", param71: "' + v71 + '", param72: "' + v72 + '", param73: "' + v73 + '", param74: "' + v74 + '", param75: "' + v75 +
                    '", param76: "' + v76 + '", param77: "' + v77 + '", param78: "' + v78 + '", param79: "' + v79 + '", param80: "' + v80 +
                    '", param81: "' + v81 + '", param82: "' + v82 +
                    '" }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    $("body").css("cursor", "default");
                    alert("Ok");
                    parent.document.location.href = response.d;
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function cancelar() {
            var linkurl = "../CadastroAssociado.aspx";
            parent.document.location.href = linkurl;
        }

    </script>

</body>
</html>
