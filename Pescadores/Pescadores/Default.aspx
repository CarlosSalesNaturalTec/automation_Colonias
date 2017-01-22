<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Pescadores._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <asp:Image ID="Image1" runat="server" ImageUrl="~/midias/pescador.JPG"/>
    <p>.</p>

    <div class="row">
        <div class="col-lg-6">

            <div class="well bs-component">
                <form class="form-horizontal">
                    <fieldset>
                        <div class="form-group">
                            <label for="inputUser" class="col-lg-2 control-label">Usuário</label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="inputUser" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="inputSenha" class="col-lg-2 control-label">Senha</label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="inputSenha" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <br />
                                <asp:Button ID="bt_conectar" runat="server" Text="Conectar" OnClick="bt_conectar_Click" CssClass="btn btn-success" />
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>

        </div>
    </div>

</asp:Content>
