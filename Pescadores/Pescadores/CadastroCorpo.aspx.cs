using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pescadores
{
    public partial class CadastroCorpo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ScripID = "<script language=javascript>" +
                   "document.getElementById('IDHidden').value = '" + Session["IDCol"].ToString() + "';" +
                   "document.getElementById('ColoniaHidden').value = '" + Session["Colonia_Nome"].ToString() + "';" +
                   "document.getElementById('EmissaoHidden').value = '" + DateTime.Now.ToString("dd/MM/yyyy") + "';" +
            "</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "PegaID", ScripID);
        }

    }
}