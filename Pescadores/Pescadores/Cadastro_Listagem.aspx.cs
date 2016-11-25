using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pescadores
{
    public partial class Cadastro_Listagem : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblIDColonia.Text = Session["IDCol"].ToString();
                lblColonia.Text  = Session["Colonia_Nome"].ToString();
            }
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
            lblID.Text = GridAssociados.SelectedRow.Cells[2].Text;
            lblAssociado.Text = GridAssociados.SelectedRow.Cells[0].Text;
            
            Bt_Alterar.Visible = true;
            Bt_Imprimir.Visible = true;
            Bt_Excluir.Visible = true;

        }

        private void atualiza_grid()
        {
            string stringSelect = @"select Nome,Apelido,ID_Associado from Tbl_Associados" +
                " where (ID_Colonia = " + lblIDColonia.Text +
                " and nome LIKE '" + txtPesquisa.Text + "%') order by Nome";

            // listagem
            OperacaoBanco operacao = new OperacaoBanco();
            System.Data.SqlClient.SqlDataReader rcrdset = operacao.Select(stringSelect);
            GridAssociados.DataSource = rcrdset;
            GridAssociados.DataBind();
            ConexaoBancoSQL.fecharConexao();
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

            if (lblID.Text == "")
            {
                Response.Write("<script>alert('Selecione um Associado');</script>");
                return;
            }


            //string idc = IdAssoc;
            string stringDelete = "delete from Tbl_Associados where ID_Associado = " + lblID.Text;
            OperacaoBanco operacao = new OperacaoBanco();
            Boolean deletar = operacao.Delete(stringDelete);
            ConexaoBancoSQL.fecharConexao();
            if (deletar == true)
            {
                Response.Write("<script>alert('Excluido');</script>");
                lblID.Text = "";
                lblAssociado.Text = "";
                atualiza_grid();
            }
            else
            {
                Response.Write("<script>alert('ERRO ao excluir. TENTE NOVAMENTE');</script>");
            }

        }

        protected void BtImprimir(object sender, EventArgs e)
        {
            Session["IDAssoc"] = lblID.Text;
            Response.Redirect("FichaAssociado.aspx");
        }

    }
}