using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace colonias
{
    public partial class colonias_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                atualiza_grid();
            }
        }

        public void atualiza_grid()
        {
            // listagem de funcionarios por cliente
            OperacaoBanco operacao = new OperacaoBanco();
            string stringSelect = "select * from Tbl_Associados order by Nome";
            System.Data.SqlClient.SqlDataReader rcrdset = operacao.Select(stringSelect);
            GridView2.DataSource = rcrdset;
            GridView2.DataBind();
            ConexaoBancoSQL.fecharConexao();
        }

    }
}