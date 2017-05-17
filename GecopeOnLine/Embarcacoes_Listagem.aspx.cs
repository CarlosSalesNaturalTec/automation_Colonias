using System;
using System.Globalization;
using System.Text;

public partial class Embarcacoes_Listagem : System.Web.UI.Page
{
    StringBuilder str = new StringBuilder();
    int TotalDeRegistros = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            montaCabecalho();
            dadosCorpo();
            montaRodape();
            Literal1.Text = str.ToString();
        }
    }

    private void montaCabecalho()
    {
        string stringcomaspas = "<table id=\"tabela\" class=\"table table-striped table-hover \">" +
            "<thead>" +
            "<tr>" +
            "<th>NOME</th>" +
            "<th>TIPO</th>" +
            "<th>CALADO</th>" +
            "<th>ANO CONSTRUÇÃO</th>" +
            "<th>ID</th>" +
            "</tr>" +
            "</thead>" +
            "<tbody>";
        str.Clear();
        str.Append(stringcomaspas);
    }

    private void dadosCorpo()
    {
        string datastatus = DateTime.Now.ToString("yyyy-MM-dd");
        string stringselect = "select Nome, Tipo, Calado, Ano_Construcao, ID_Embarcacao" +
                " from Tbl_Embarcacoes  " +
                " where ID_Colonia = " + Session["IDCol"].ToString() +
                " order by Nome";

        OperacaoBanco operacao = new OperacaoBanco();
        System.Data.SqlClient.SqlDataReader dados = operacao.Select(stringselect);

        while (dados.Read())
        {
            string Coluna1 = Convert.ToString(dados[0]);
            string Coluna2 = Convert.ToString(dados[1]);
            string Coluna3 = Convert.ToString(dados[2]);
            string Coluna4 = Convert.ToString(dados[3]);
            string Coluna5 = Convert.ToString(dados[4]);

            string stringcomaspas = "<tr>" +
                "<td>" + Coluna1 + "</td>" +
                "<td>" + Coluna2 + "</td>" +
                "<td>" + Coluna3 + "</td>" +
                "<td>" + Coluna4 + "</td>" +
                "<td>" + Coluna5 + "</td>" +
                "</tr>";

            str.Append(stringcomaspas);
            TotalDeRegistros++;
        }
        ConexaoBancoSQL.fecharConexao();
        Literal_Quant.Text = TotalDeRegistros.ToString();
    }

    private void montaRodape()
    {
        string footer = "</tbody></table>";
        str.Append(footer);
    }
}