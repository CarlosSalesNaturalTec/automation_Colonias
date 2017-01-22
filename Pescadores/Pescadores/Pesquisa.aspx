<%@ Page Title="Cadastro Associado - GECOPE" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pesquisa.aspx.cs" Inherits="Pescadores.Pesquisa" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <h3>Associados Cadastrados</h3>
    <br />

    <asp:Literal ID="Literal1" runat="server"></asp:Literal>

     <!-- Busca e Paginação modelo: datatables.net -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	    <link rel="stylesheet" href="//cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css">
	    <script src="//cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
	    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.10/css/dataTables.bootstrap.min.css">
	    <script>
	    $(document).ready(function(){
	        $('#tabelaCli').DataTable({
	            "language": {
	                "processing": "Aguarde! Processando...",
	                "loadingRecords": "Aguarde! Carregando dados...",
		            "lengthMenu": "Mostrando _MENU_ registros por página",
		            "zeroRecords": "Nada encontrado",
		            "info": "Total de Registros:  _MAX_ ",
		            "infoEmpty": "Nenhum registro disponível",
		            "infoFiltered": "(filtrado)",
		            "search": "Pesquisa"
		        }
		    });
		});
	    </script>


</asp:Content>
