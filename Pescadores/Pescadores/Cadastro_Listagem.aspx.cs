using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pescadores
{
    public partial class Cadastro_Listagem : Page
    {
        int Colonia_ID;
        string Associado_ID;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // tenta identificar se houve login. caso contrário vai para página de erro
                Colonia_ID = Int32.Parse(Session["Colonia_ID"].ToString());

            }
        }

        public void atualiza_grid()
        {
            string stringSelect = @"select Nome,Apelido,ID_Associado from Tbl_Associados" +
                " where (ID_Colonia = " + Colonia_ID +
                " and nome LIKE '" + txtPesquisa.Text + "%') order by Nome";

            // listagem
            OperacaoBanco operacao = new OperacaoBanco();
            System.Data.SqlClient.SqlDataReader rcrdset = operacao.Select(stringSelect);
            GridAssociados.DataSource = rcrdset;
            GridAssociados.DataBind();
            ConexaoBancoSQL.fecharConexao();
        }

        protected void GridAssociados_RowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
        {
            //muda o ponteiro do mouse
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridAssociados, "Select$" + e.Row.RowIndex);
                e.Row.Attributes["style"] = "cursor:pointer";
            }
        }

        protected void GridAssociados_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblAssociado.Text = GridAssociados.SelectedRow.Cells[0].Text;
            Associado_ID = GridAssociados.SelectedRow.Cells[2].Text;

            Bt_Alterar.Visible = true;
            Bt_Imprimir.Visible = true;
            Bt_Excluir.Visible = true;

        }

        protected void BtPesquisar(object sender, EventArgs e)
        {
            atualiza_grid();
        }

        protected void BtAlterar(object sender, EventArgs e)
        {
            
        }

        protected void BtExcluir(object sender, EventArgs e)
        {
            OperacaoBanco operacao = new OperacaoBanco();
            Boolean deletar = operacao.Delete("delete from Tbl_Associados where ID_Associado=" + Associado_ID);
            if (deletar == true)
            {
                Response.Write("<script>alert('Excluido');</script>");
                atualiza_grid();
            }
            else
            {
                Response.Write("<script>alert('ERRO ao excluir. TENTE NOVAMENTE');</script>");
            }
            ConexaoBancoSQL.fecharConexao();

        }

        protected void BtImprimir(object sender, EventArgs e)
        {

        }



    }
}