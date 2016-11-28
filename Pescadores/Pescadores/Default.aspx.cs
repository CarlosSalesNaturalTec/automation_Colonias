using System;
using System.Web.UI;

namespace Pescadores
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                inputUser.Focus();
            }
        }

        protected void bt_conectar_Click(object sender, EventArgs e)
        {
            // localiza usuario
            string stringSelect = "select ID_Colonia,usuario,senha,nome,cidade,uf from Tbl_Colonias where usuario = '" + inputUser.Text + "'";
            OperacaoBanco operacao = new OperacaoBanco();
            System.Data.SqlClient.SqlDataReader rcrdset = operacao.Select(stringSelect);
            while (rcrdset.Read())
            {
                if (inputSenha.Text == Convert.ToString(rcrdset[2]))
                {
                    Session["IDCol"] = Convert.ToString(rcrdset[0]);
                    Session["Colonia_Nome"] = Convert.ToString(rcrdset[3]);
                    Session["Colonia_Cidade"] = Convert.ToString(rcrdset[4]);
                    Session["Colonia_UF"] = Convert.ToString(rcrdset[5]);

                    Response.Redirect("Painel.aspx");

                }
                else
                {
                    Response.Write("<script>alert('Senha ou usuário inválidos');</script>");
                }
            }
            ConexaoBancoSQL.fecharConexao();
        }

    }
}