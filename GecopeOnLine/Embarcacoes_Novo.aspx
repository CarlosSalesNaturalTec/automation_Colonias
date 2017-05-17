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
            <button class="w3-bar-item w3-btn tablink" onclick="openTab(event,'tab2')">Observações</button>
            <button class="w3-bar-item w3-btn tablink" onclick="openTab(event,'tab3')">Foto</button>
        </div>

        <div id="tab1" class="w3-container w3-border w3-animate-left tabs">
            <h4><strong>Dados da Embarcacao</strong></h4>
            <form class="w3-container">

                <label id="lblNome">Nome</label>
                <input type="text" name="nome" id="input_nome" class="w3-input w3-border w3-round-large" required autofocus>

                <div class="w3-row">
                    <div class="w3-half">
                        <label id="lblTipo">Tipo</label>
                        <input type="text" id="input_Tipo" class="w3-input w3-border w3-round-large" style="width: 95%" required>
                    </div>
                    <div class="w3-quarter">
                        <label>Ano Construção</label>
                        <input type="text" id="input_Ano" class="w3-input w3-border w3-round-large" style="width: 95%">
                    </div>
                    <div class="w3-quarter">
                        <label>Calado</label>
                        <input type="text" id="input_Calado" class="w3-input w3-border w3-round-large">
                    </div>
                </div>

                <div class="w3-row">
                    <div class="w3-half">
                        <label>Denominação</label>
                        <input type="text" id="input_denom" class="w3-input w3-border w3-round-large" style="width: 95%" required>
                    </div>
                    <div class="w3-quarter">
                        <label>Abreviatura</label>
                        <input type="text" id="input_Abrev" class="w3-input w3-border w3-round-large" style="width: 95%">
                    </div>
                </div>

                <div class="w3-row">
                    <div class="w3-half">
                        <label>Número na Capitania</label>
                        <input type="text" id="input_captania" class="w3-input w3-border w3-round-large" style="width: 95%" required>
                    </div>
                    <div class="w3-half">
                        <label>Licença de Pesca (RGP)</label>
                        <input type="text" id="input_licenca" class="w3-input w3-border w3-round-large">
                    </div>
                </div>

                <div class="w3-row">
                    <div class="w3-half">
                        <label>Tipo de Pesca</label>
                        <input type="text" id="input_TipoPesca" class="w3-input w3-border w3-round-large" style="width: 95%" required>
                    </div>
                    <div class="w3-quarter">
                        <label>Vencimento da Licença</label>
                        <input type="date" id="input_vencimento" class="w3-input w3-border w3-round-large" style="width: 95%">
                    </div>
                    <div class="w3-quarter">
                        <label>Número de Tripulantes</label>
                        <input type="text" id="input_tripulantes" class="w3-input w3-border w3-round-large">
                    </div>
                </div>

                <div class="w3-row">
                    <div class="w3-quarter">
                        <label>Comprimento</label>
                        <input type="text" id="input_Comprim" class="w3-input w3-border w3-round-large" style="width: 95%" required>
                    </div>
                    <div class="w3-quarter">
                        <label>Arqueação Bruta</label>
                        <input type="text" id="input_arqueacao" class="w3-input w3-border w3-round-large" style="width: 90%">
                    </div>
                    <div class="w3-quarter">
                        <label>Potência do Motor (HP)</label>
                        <input type="text" id="input_potencia" class="w3-input w3-border w3-round-large" style="width: 95%">
                    </div>
                    <div class="w3-quarter">
                        <label>Propulsão do Motor</label>
                        <input type="text" id="input_propulsao" class="w3-input w3-border w3-round-large">
                    </div>
                </div>

                <div class="w3-row">
                    <div class="w3-half">
                        <label>Meterial prepoderante do casco</label>
                        <input type="text" id="input_casco" class="w3-input w3-border w3-round-large" style="width: 95%" required>
                    </div>
                    <div class="w3-half">
                        <label>Tipo de Combustivel</label>
                        <input type="text" id="input_combsutivel" class="w3-input w3-border w3-round-large">
                    </div>
                </div>

                <br />

            </form>
        </div>

        <div id="tab2" class="w3-container w3-border w3-animate-left tabs" style="display: none">
            <h2>Observações</h2>
        </div>

        <div id="tab3" class="w3-container w3-border w3-animate-left tabs" style="display: none">
            <h2>Foto</h2>
        </div>
    </div>

    <div class="w3-section">
        <input id="btSalvar" type="button" class="w3-button w3-block w3-light-green w3-hover-green w3-section w3-padding" onclick="Salvar();" value="Salvar" />
    </div>

    <script>

        document.getElementById("input_nome").focus();


        function openTab(evt, tabName) {
            var i, x, tablinks;

            x = document.getElementsByClassName("tabs");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }

            tablinks = document.getElementsByClassName("tablink");
            for (i = 0; i < x.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" w3-blue", "");
            }
            document.getElementById(tabName).style.display = "block";
            evt.currentTarget.className += " w3-blue";
        }
    </script>

</body>
</html>
