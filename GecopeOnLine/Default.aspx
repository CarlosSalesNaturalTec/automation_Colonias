<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>GECOPE</title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="../vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">

    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
    <script src="../vendors/jquery/dist/jquery-3.1.1.min.js" type="text/javascript"></script>

</head>

<body class="login">
    <div>
        <a class="hiddenanchor" id="signup"></a>
        <a class="hiddenanchor" id="signin"></a>

        <div class="login_wrapper">
            <div class="animate form login_form">
                <section class="login_content">
                    <form>
                        <h1>GECOPE</h1>
                        <div>
                            <input type="text" class="form-control" placeholder="Usuário" required="" id="txtNome" />
                        </div>
                        <div>
                            <input type="password" class="form-control" placeholder="Senha" required="" id="txtpwd" />
                        </div>
                        <div>
                            <input id="btLogin" type="button" value="ENTRAR" onclick="TentarLogin()" class="btn btn-default" />
                        </div>

                        <div class="clearfix"></div>

                        <div class="separator">


                            <div class="clearfix"></div>
                            <br />

                            <div>
                                <h3><i class="fa fa-ship"></i> Gestão de Colônias</h3>
                                <p>©2017 Todos os direitos reservados.</p>
                            </div>
                        </div>
                    </form>
                </section>
            </div>

        </div>
    </div>

    <script type="text/javascript">

        document.getElementById("txtNome").focus();

        function TentarLogin() {

            $("body").css("cursor", "progress");
            document.getElementById("btLogin").disabled = true;

            $.ajax({
                type: "POST",
                url: "WebService.asmx/Identificador",
                data: '{user: "' + document.getElementById("txtNome").value + '", pwd: "' + document.getElementById("txtpwd").value + '"  }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function OnSuccess(response) {            
            var linkurl = response.d;
            window.location.href = linkurl;
        }
    </script>

</body>
     
</html>
