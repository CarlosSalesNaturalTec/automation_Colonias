using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pescadores
{
    public partial class Suporte : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtExecutar(object sender, EventArgs e)
        {
            string stringSelect = txtSelect.Text;

            // listagem
            OperacaoBanco operacao = new OperacaoBanco();
            System.Data.SqlClient.SqlDataReader rcrdset = operacao.Select(stringSelect);
            GridView2.DataSource = rcrdset;
            GridView2.DataBind();
            ConexaoBancoSQL.fecharConexao();
        }
    }
}