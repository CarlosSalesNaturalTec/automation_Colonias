using System;

namespace Pescadores
{
    public partial class CadastroAssociado : System.Web.UI.Page
    {
        string Colonia_Nome = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            Colonia_Nome = Session["Colonia_Nome"].ToString();
        }
    }
}