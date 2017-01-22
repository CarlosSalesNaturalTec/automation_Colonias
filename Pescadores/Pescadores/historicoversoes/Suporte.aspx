<%@ Page Title="Suporte" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Suporte.aspx.cs" Inherits="Pescadores.Suporte" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <asp:TextBox ID="txtSelect" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Select" OnClick="BtExecutar" />

     <!-- Grid -->
    <p></p>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="true" Width="100%" >
    </asp:GridView>


</asp:Content>
