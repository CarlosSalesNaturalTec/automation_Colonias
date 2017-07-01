using System;
using System.Text;

namespace Pescadores
{
    public partial class Pesquisa2 : System.Web.UI.Page
    {

        StringBuilder str = new StringBuilder();
        string IDColPesq;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                IDColPesq = Session["IDCol"].ToString();

                montaCabecalho();
                dadosCorpo();
                montaRodape();
                Literal1.Text = str.ToString();
            }
        }

        private void montaCabecalho()
        {
            string stringcomaspas = "<table id=\"tabelaCli\" class=\"table table-striped table-hover \">" +
                "<thead>" +
                "<tr>" +
                "<th>NOME</th>" +
                "<th>TEMPO ASSOC.</th>" +
                "<th>ÁREA ATUAÇÃO</th>" +
                "<th>PRINCIP.ESP.</th>" +
                "<th>CATEGORIA</th>" +
                "</tr>" +
                "</thead>" +
                "<tbody>";
            str.Clear();
            str.Append(stringcomaspas);
        }

        private void dadosCorpo()
        {
            string datastatus = DateTime.Now.ToString("yyyy-MM-dd");
            string stringselect = @"select ID_Associado , Nome, tempo_associado , AreaAtuacao  , Arte_Principal, Categoria   " +
                    " from Tbl_Associados  where ID_Colonia = " + IDColPesq +
                    " order by Nome";
            int TotalRegistros = 0;

            OperacaoBanco operacao = new OperacaoBanco();
            System.Data.SqlClient.SqlDataReader dados = operacao.Select(stringselect);

            string bt1a = "", bt1b ="";
            while (dados.Read())
            {
                string Coluna0 = Convert.ToString(dados[0]);
                string Coluna1 = Convert.ToString(dados[1]);              
                string Coluna2 = Convert.ToString(dados[2]);
                string Coluna3 = Convert.ToString(dados[3]);
                string Coluna4 = Convert.ToString(dados[4]);
                string Coluna5 = Convert.ToString(dados[5]);

                bt1a = "<a href='RedirectPesquisa.aspx?v1=" + Coluna0 + "&v2=" + Coluna1 + "' target='_blank'>";
                bt1b = "</a>";

                string stringcomaspas = "<tr>" +
                    "<td>" + bt1a + Coluna1 + bt1b + "</td>" +
                    "<td>" + Coluna2 + "</td>" +
                    "<td>" + Coluna3 + "</td>" +
                    "<td>" + Coluna4 + "</td>" +
                    "<td>" + Coluna5 + "</td>" +
                    "</tr>";

                str.Append(stringcomaspas);
                TotalRegistros++;
            }
            ConexaoBancoSQL.fecharConexao();

        }

        private void montaRodape()
        {
            string footer = "</tbody></table>";
            str.Append(footer);
        }

    }
}