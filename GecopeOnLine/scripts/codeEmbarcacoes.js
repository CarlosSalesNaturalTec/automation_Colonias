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

function abrevTXT() {
    var e = document.getElementById("select_denom")
    var v5 = e.options[e.selectedIndex].value
    var abrev = "";
    var especif = "";
    switch (v5) {
        case "1":
            abrev = "BRE";
            especif = "Embarcação movida a remo, com casco chato, de pequeno porte, conhecida vulgarmente como catraia, bateira, bote a remo, etc.";
            break;
        case "2":
            abrev = "BOC";
            especif = "Embarcação movida a vela, casco de madeira e quilha, sem convés, comprimento inferior a 11m, vulgarmente conhecida como barco a vela, bote a vela, etc.";
            break;
        case "3":
            abrev = "BOM";
            especif = "Embarcação a motor, com casco de madeira e quilha, sem convés , com ou sem casaria,  denominada de  barco motorizado, barco a motor."
            break;
        case "4":
            abrev = "CAN";
            especif = "Embarcação movida a vela/remo, casco de madeira ou fibra, sem quilha, sem convés, comprimento variando de 3 a 11m, conhecida vulgarmente por canoa, batelão, canoa de casco."
            break;
        case "5":
            abrev = "JAN";
            especif = "Embarcação a vela, casco chato de toras de madeira, sem quilha, comprimento de 4 a 6 m.";
            break;
        case "6":
            abrev = "BAL";
            especif = "Embarcação de pequeno porte, com casco de alumínio e  motor de popa,  conhecida por lambari, catraia de alumínio ou catraia motorizada.";
            break;
        case "7":
            abrev = "MAR";
            especif = "Coleta manual de marisco";
            break;
        case "8":
            abrev = "SAV";
            especif = "Embarcação motorizada, casco de madeira/fibra, com quilha, com convés e casaria, classificadas em pequeno, médio ou grande. Conhecida vulgarmente como saveiro";
            break;
        case "9":
            abrev = "LIN";
            especif = "Embarcação motorizada com casco de ferro, comprimento geralmente superior a 14 m, com convés e casaria, vulgarmente conhecida como lancha industrial, barco de ferro ou barco industrial."
            break;
        default:
            abrev = "XXX";
            especif = "XXX"
            break;
    }

    document.getElementById('input_Abrev').value = abrev;
    document.getElementById('input_Especif').value = especif;
}

function SalvarRegistro() {

    $("body").css("cursor", "progress");

    document.getElementById("btSalvar").style.cursor = "progress";

    var v1 = document.getElementById("input_nome").value
    var v2 = document.getElementById("input_Tipo").value
    var v3 = document.getElementById("input_Ano").value
    var v4 = document.getElementById("input_Calado").value

    var v5 = document.getElementById("select_denom").value //

    var v6 = document.getElementById("input_Abrev").value

    var v7 = document.getElementById("input_Especif").value
    var v8 = document.getElementById("input_captania").value
    var v9 = document.getElementById("input_licenca").value
    var v10 = document.getElementById("input_vencimento").value
    var v11 = document.getElementById("input_TipoPesca").value

    var v12 = document.getElementById("input_tripulantes").value
    var v13 = document.getElementById("input_Comprim").value
    var v14 = document.getElementById("input_arqueacao").value
    var v15 = document.getElementById("input_potencia").value
    var v16 = document.getElementById("input_propulsao").value

    var v17 = document.getElementById("select_casco").value
    var v18 = document.getElementById("select_combust").value

    var v19 = "path foto";

    if (v1 == "") {
        alert("Informe Nome da Embarcação");
        document.getElementById("input_nome").focus();
        return;
    }

    $.ajax({
        type: "POST",
        url: "WebService.asmx/EmbarcacaoSalvar",
        data: '{param1: "' + v1 + '", param2: "' + v2 + '", param3: "' + v3 + '", param4: "' + v4 + '", param5: "' + v5 + '", param6: "' + v6 +
            '",param7: "' + v7 + '", param8: "' + v8 + '", param9: "' + v9 + '", param10: "' + v10 + '", param11: "' + v11 + '", param12: "' + v12 +
            '",param13: "' + v13 + '", param14: "' + v14 + '", param15: "' + v15 + '", param16: "' + v16 + '", param17: "' + v17 +
            '", param18: "' + v18 + '", param19: "' + v19 + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            document.getElementById("btSalvar").style.cursor = "default";
            var linkurl = response.d;
            window.location.href = linkurl;
        },
        failure: function (response) {
            alert(response.d);
        }
    });
}