﻿using System;
using System.Text;

namespace Pescadores
{
    public partial class Pesquisa : System.Web.UI.Page
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
                "<th>APELIDO</th>" +
                "<th>EMBARCAÇÃO</th>" +
                "<th>CPF</th>" +
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
            string stringselect = @"select Nome, Apelido, Embarcacao_Nome , CPF, ID_Associado  " +
                    " from Tbl_Associados  where ID_Colonia = " + IDColPesq +
                    " order by Nome";
            int TotalRegistros = 0;

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