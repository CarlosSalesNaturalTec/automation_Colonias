using System;
using System.Web.UI;

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
                TotalRegistros();
            }
        }

        private void TotalRegistros()
        {
            OperacaoBanco operacao = new OperacaoBanco();
            string stringselect = "select count(ID_Associado) as Quant " +
                "from Tbl_Associados " +
                "where ID_Colonia =" + Session["IDCol"].ToString();

            System.Data.SqlClient.SqlDataReader dados = operacao.Select(stringselect);

            while (dados.Read())
            {
               lblQuant.Text  = Convert.ToString(dados[0]);
            }
        }
    }
}