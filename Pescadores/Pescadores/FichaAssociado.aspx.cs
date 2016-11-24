using System;
using System.Web.UI;

namespace Pescadores
{
    public partial class FichaAssociado : Page
    {

        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //lblColonia.Text = Session["Colonia_Nome"].ToString();
                id = Session["idficha"].ToString();
                preencheFicha();
            }
        }

        private void preencheFicha()
        {
            OperacaoBanco operacao = new OperacaoBanco();
            System.Data.SqlClient.SqlDataReader dados = operacao.Select("select Nome from Tbl_Associados where ID_Associado = " + id);
            while (dados.Read())
            {
                lblNome.Text = Convert.ToString(dados[0]);
            }

        }

    }
}