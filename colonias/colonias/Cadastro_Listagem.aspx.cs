using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace colonias
{
    public partial class Cadastro_Listagem : Page
    {
        string Colonia_ID = "1";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                atualiza_grid();
            }
        }

        public void atualiza_grid()
        {
            string stringSelect = @"select Nome,Apelido from Tbl_Associados" +
                " where ID_Colonia = " + Colonia_ID +
                " order by Nome";

            // listagem
            OperacaoBanco operacao = new OperacaoBanco();
            System.Data.SqlClient.SqlDataReader rcrdset = operacao.Select(stringSelect);
            GridAssociados.DataSource = rcrdset;
            GridAssociados.DataBind();
            ConexaoBancoSQL.fecharConexao();
        }
    }
}