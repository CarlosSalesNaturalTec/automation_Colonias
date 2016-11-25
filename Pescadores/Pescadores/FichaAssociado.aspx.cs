using System;
using System.Web.UI;

namespace Pescadores
{
    public partial class FichaAssociado : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblIDColonia.Text = Session["IDCol"].ToString();
                lblColonia.Text = Session["Colonia_Nome"].ToString();
                lblIDAssociado.Text = Session["IDAssoc"].ToString();

                preencheFicha();
            }
        }

        private void preencheFicha()
        {
            OperacaoBanco operacao = new OperacaoBanco();
            System.Data.SqlClient.SqlDataReader dados = operacao.Select("select Nome,apelido,Endereco,Bairro from Tbl_Associados where ID_Associado = " + lblIDAssociado.Text);
            while (dados.Read())
            {
                lblNome.Text = Convert.ToString(dados[0]);
                lblApelido.Text = Convert.ToString(dados[1]);
                lblEND.Text = Convert.ToString(dados[2]);
                lblBairro.Text = Convert.ToString(dados[3]);
            }

        }

    }
}