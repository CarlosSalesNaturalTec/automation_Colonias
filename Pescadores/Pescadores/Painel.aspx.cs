using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pescadores
{
    public partial class Painel : Page
    {

        string Colonia_Nome = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // tenta identificar se houve login. caso contrário vai para página de erro
                Colonia_Nome = Session["Colonia_Nome"].ToString();
                lblColonia.Text = "Colônia: " + Colonia_Nome;

            }

        }
    }
}