using System;
using System.Web.UI;

namespace Pescadores
{
    public partial class CarteiraProv : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                lblIDAssociado.Text = Request["IDAssoc"].ToString();
                lblIDColonia.Text = Session["IDCol"].ToString();
                lblColonia.Text = Session["Colonia_Nome"].ToString();

                preencheFicha();
                //imprimeficha();
                
            }
        }

        private void imprimeficha()
        {
            ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.print();</script>");
        }

        private void preencheFicha()
        {
            OperacaoBanco operacao = new OperacaoBanco();
            System.Data.SqlClient.SqlDataReader dados = operacao.Select("select Nome,Filiacao_Pai,Filiacao_Mae,Nascimento,FotoDataURI,Naturalidade,Nacionalidade," +
                    "RG,RG_Data_Exped,CPF,PIS,NIT,CEI,RGP,CTPS,RGP_Registro " +
                    "from Tbl_Associados " + 
                    "where ID_Associado = " + lblIDAssociado.Text);

            while (dados.Read())
            {

                lblNome.Text = Convert.ToString(dados[0]);

                lblPai.Text = Convert.ToString(dados[1]);
                lblMae.Text = Convert.ToString(dados[2]);
                lblNascimento.Text = Convert.ToString(dados[3]);

                lblNatural.Text = Convert.ToString(dados[5]);
                lblNacional.Text = Convert.ToString(dados[6]);

                lblRG.Text = Convert.ToString(dados[7]);
                lblEmissao.Text = Convert.ToString(dados[8]);

                lblCPF.Text = Convert.ToString(dados[9]);
                lblPIS.Text = Convert.ToString(dados[10]);

                lblNIT.Text = Convert.ToString(dados[11]);
                lblCEI.Text = Convert.ToString(dados[12]);

                lblRGP.Text = Convert.ToString(dados[13]);
                lblCTPS.Text = Convert.ToString(dados[14]);

                lbladmiss.Text = Convert.ToString(dados[15]);
                


                //monta foto
                //string ScriptFoto = "<script language=javascript>document.getElementById('results').innerHTML = '<img src=\"" + Convert.ToString(dados[4]) + "\"/>';</script>";
                //ClientScript.RegisterStartupScript(this.GetType(), "montafoto", ScriptFoto);

            }

        }

    }
}