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
            System.Data.SqlClient.SqlDataReader dados = operacao.Select("select Nome,apelido,Endereco,Bairro,cep,cidade,uf, " +
                    "Filiacao_Pai,Filiacao_Mae,Nascimento,Naturalidade,Nacionalidade,Escolaridade, " +
                    "CPF,RG,RG_Data_Exped,RG_Orgao, " +
                    "Titulo,Titulo_Zona,Titulo_Secao, " +
                    "PIS,NIT,CEI, " +
                    "Sexo,Estado_Civil,Telefone,email, " +
                    "CTPS,RGP,RGP_Registro,RGP_emissor " +
                    "from Tbl_Associados where ID_Associado = " + lblIDAssociado.Text);

            while (dados.Read())
            {
                lblNome.Text = Convert.ToString(dados[0]);
                lblApelido.Text = Convert.ToString(dados[1]);

                lblEND.Text = Convert.ToString(dados[2]);
                lblBairro.Text = Convert.ToString(dados[3]);

                lblCEP.Text = Convert.ToString(dados[4]);
                lblMunicipio.Text = Convert.ToString(dados[5]);
                lblUF.Text = Convert.ToString(dados[6]);

                lblPai.Text = Convert.ToString(dados[7]);
                lblMae.Text = Convert.ToString(dados[8]);

                lblNascimento.Text = Convert.ToString(dados[9]);
                lblNatural.Text = Convert.ToString(dados[10]);
                lblNacional.Text = Convert.ToString(dados[11]);
                lblEscolaridade.Text = Convert.ToString(dados[12]);

                lblCPF.Text = Convert.ToString(dados[13]);
                lblRG.Text = Convert.ToString(dados[14]);
                lblEmissao.Text = Convert.ToString(dados[15]);
                lblEmissor.Text = Convert.ToString(dados[16]);

                lblTitulo.Text = Convert.ToString(dados[17]);
                lblZona.Text = Convert.ToString(dados[18]);
                lblSecao.Text = Convert.ToString(dados[19]);

                lblPIS.Text = Convert.ToString(dados[20]);
                lblNIT.Text = Convert.ToString(dados[21]);
                lblCEI.Text = Convert.ToString(dados[22]);

                lblSexo.Text = Convert.ToString(dados[23]);
                lblCivil.Text = Convert.ToString(dados[24]);
                lblTel.Text = Convert.ToString(dados[25]);
                lblemail.Text = Convert.ToString(dados[26]);

                lblCTPS.Text = Convert.ToString(dados[27]);
                lblRGP.Text = Convert.ToString(dados[28]);
                lblRGP1.Text = Convert.ToString(dados[29]);
                lblRGPEMissor.Text = Convert.ToString(dados[30]);
                
            }

        }

    }
}