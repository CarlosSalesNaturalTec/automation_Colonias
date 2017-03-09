<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PainelPrincipal.aspx.cs" Inherits="PainelPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <br />
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/pescador.JPG" />
    <br />
    <h1>GECOPE</h1>
    <h3 class="text-danger">
        <asp:Label ID="lblColonia" runat="server" Text=""></asp:Label></h3>
    <br />

    <div class ="row">

    <div class="panel panel-primary col-md-4">
        <div class="panel-heading">
            <h3 class="panel-title">Associados Cadastrados</h3>
        </div>
        <div class="panel-body">
            <asp:Label ID="lblQuant" runat="server"></asp:Label>
        </div>
    </div>

    </div>
</body>
</html>
