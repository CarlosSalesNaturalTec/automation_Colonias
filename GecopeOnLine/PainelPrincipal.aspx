<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PainelPrincipal.aspx.cs" Inherits="PainelPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Painel Principal</title>

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script type="text/javascript" src="Scripts/jquery-3.1.1.min.js"></script>

</head>
<body>
    <div class="w3-container w3-padding w3-center w3-text-blue">
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/pescador.JPG" />
        <br /><br /><br />
        <h1>Bem Vindo à</h1>
        <h1><strong>
            <asp:Label ID="lblColonia" runat="server" Text=""></asp:Label></strong></h1>
    </div>
</body>
</html>
