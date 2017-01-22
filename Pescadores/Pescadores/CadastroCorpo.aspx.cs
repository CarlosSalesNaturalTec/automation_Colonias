using System;

namespace Pescadores
{
    public partial class CadastroCorpo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                IDHidden.Value = Session["IDCol"].ToString();
                ColoniaHidden.Value = Session["Colonia_Nome"].ToString();
                EmissaoHidden.Value = DateTime.Now.ToString("dd/MM/yyyy");
            }

        }

    }
}