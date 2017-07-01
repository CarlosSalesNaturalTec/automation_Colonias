using System;

namespace Pescadores
{
    public partial class RedirectPesquisa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["IDAssoc"] = Request.QueryString["v1"];
            Session["NomeAssoc"] = Request.QueryString["v2"];
            Response.Redirect("Cadastro_Alterar.aspx");

        }
    }
}