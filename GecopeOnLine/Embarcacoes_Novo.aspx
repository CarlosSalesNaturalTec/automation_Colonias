<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Embarcacoes_Novo.aspx.cs" Inherits="Embarcacoes_Novo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Nova Embarcação</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body>

    <div class="w3-container">
        <h2>Nova Embarcação</h2>

        <div class="w3-bar w3-gray">
            <button class="w3-bar-item w3-btn tablink w3-blue" onclick="openTab(event,'tab1')">Dados</button>
            <button class="w3-bar-item w3-btn tablink" onclick="openTab(event,'tab3')">Foto</button>
        </div>

        <div id="tab1" class="w3-container w3-border w3-animate-left tabs">
            <h4><strong>Dados da Embarcacao</strong></h4>
            <form class="w3-container">

                <label class="w3-text-blue-gray">Nome</label>
                <input type="text" name="nome" id="input_nome" class="w3-input w3-border w3-round-large" required autofocus>

                <div class="w3-row">
                    <div class="w3-half">
                        <label class="w3-text-blue-gray">Tipo</label>
                        <input type="text" id="input_Tipo" class="w3-input w3-border w3-round-large" style="width: 95%" required>
                    </div>
                    <div class="w3-quarter">
                        <label class="w3-text-blue-gray">Ano Construção</label>
                        <input type="number" id="input_Ano" class="w3-input w3-border w3-round-large" style="width: 95%">
                    </div>
                    <div class="w3-quarter">
                        <label class="w3-text-blue-gray">Calado</label>
                        <input type="text" id="input_Calado" class="w3-input w3-border w3-round-large">
                    </div>
                </div>

                <div class="w3-row">
                    <div class="w3-half">
                        <label class="w3-text-blue-gray">Denominação</label>
                        <select id="select_denom" class="w3-select w3-border" style="width: 95%" onchange="abrevTXT()">
                            <option selected value="0">Selecione</option>
                            <option value="1">Bote a Remo</option>
                            <option value="2">Barco a Vela</option>
                            <option value="3">Barco motorizado</option>
                            <option value="4">Canoa</option>
                            <option value="5">Jangada</option>
                            <option value="6">Lambari</option>
                            <option value="7">Marisqueira</option>
                            <option value="8">Saveiro</option>
                            <option value="9">Lancha industrial</option>
                        </select>
                    </div>
                    <div class="w3-quarter">
                        <label class="w3-text-blue-gray">Abreviatura</label>
                        <input type="text" id="input_Abrev" class="w3-input w3-border w3-round-large" style="width: 95%" disabled>
                    </div>
                </div>

                <div class="w3-row">
                    <label class="w3-text-blue-gray">Especificações</label>
                    <textarea id="input_Especif" rows="3" style="width: 99%" disabled></textarea>
                </div>

                <div class="w3-row">
                    <div class="w3-half">
                        <label class="w3-text-blue-gray">Número na Capitania</label>
                        <input type="text" id="input_captania" class="w3-input w3-border w3-round-large" style="width: 95%" required>
                    </div>
                    <div class="w3-half">
                        <label class="w3-text-blue-gray">Licença de Pesca (RGP)</label>
                        <input type="text" id="input_licenca" class="w3-input w3-border w3-round-large">
                    </div>
                </div>

                <div class="w3-row">
                    <div class="w3-half">
                        <label class="w3-text-blue-gray">Tipo de Pesca</label>
                        <input type="text" id="input_TipoPesca" class="w3-input w3-border w3-round-large" style="width: 95%" required>
                    </div>
                    <div class="w3-quarter">
                        <label class="w3-text-blue-gray">Vencimento da Licença</label>
                        <input type="date" id="input_vencimento" class="w3-input w3-border w3-round-large" style="width: 95%">
                    </div>
                    <div class="w3-quarter">
                        <label class="w3-text-blue-gray">Número de Tripulantes</label>
                        <input type="text" id="input_tripulantes" class="w3-input w3-border w3-round-large">
                    </div>
                </div>

                <div class="w3-row">
                    <div class="w3-quarter">
                        <label class="w3-text-blue-gray">Comprimento</label>
                        <input type="text" id="input_Comprim" class="w3-input w3-border w3-round-large" style="width: 95%" required>
                    </div>
                    <div class="w3-quarter">
                        <label class="w3-text-blue-gray">Arqueação Bruta</label>
                        <input type="text" id="input_arqueacao" class="w3-input w3-border w3-round-large" style="width: 90%">
                    </div>
                    <div class="w3-quarter">
                        <label class="w3-text-blue-gray">Potência do Motor (HP)</label>
                        <input type="text" id="input_potencia" class="w3-input w3-border w3-round-large" style="width: 95%">
                    </div>
                    <div class="w3-quarter">
                        <label class="w3-text-blue-gray">Propulsão do Motor</label>
                        <input type="text" id="input_propulsao" class="w3-input w3-border w3-round-large">
                    </div>
                </div>

                <div class="w3-row">
                    <div class="w3-half">
                        <label class="w3-text-blue-gray">Meterial prepoderante do casco</label>
                        <select id="select_casco" class="w3-select w3-border" style="width: 95%">
                            <option selected value="0">FIBRA</option>
                            <option selected value="0">ALUMÍNIO</option>
                            <option selected value="0">MADEIRA</option>
                            <option selected value="0">FERRO</option>
                        </select>
                    </div>
                    <div class="w3-half">
                        <label class="w3-text-blue-gray">Tipo de Combustivel</label>
                        <select id="select_combust" class="w3-select w3-border" style="width: 95%">
                            <option selected value="0">ÓLEO DIESEL</option>
                            <option selected value="0">GASOLINA</option>
                        </select>
                    </div>
                </div>

                <br />

            </form>
        </div>

        <div id="tab3" class="w3-container w3-border w3-animate-left tabs" style="display: none">
            <h2>Foto</h2>
        </div>
    </div>

    <div class="w3-section">
        <input id="btSalvar" type="button" class="w3-button w3-block w3-light-green w3-hover-green w3-section w3-padding" onclick="Salvar();" value="Salvar" />
    </div>

    <script type="text/javascript" src="scripts/codeEmbarcacoes.js"></script>
    <script type="text/javascript" src="vendors/jquery/dist/jquery-3.1.1.min.js" ></script>

</body>
</html>
