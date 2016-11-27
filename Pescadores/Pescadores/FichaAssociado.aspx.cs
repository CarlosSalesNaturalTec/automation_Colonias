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
                    "CTPS,RGP,RGP_Registro,RGP_emissor, " +
                    "Profissao,Categoria,AreaAtuacao,   " +
                    "Relacao_Trabalho,Embarcacao_Utiliza,Embarcacao_Nome,Embarcacao_Prop,Embarcacao_Tipo," +
                    "Embarcacao_Tamanho,Embarcacao_PRopulsao,Embarcacao_capitania,RGP_MPA, " +
                    "Arte_Principal,Arte_Dono, Arte_Esepcies ,Arte_locais_venda ,Arte_comercializado ," +
                    "Trabalho_dias,Trabalho_duracao ,Trabalho_producao ,Trabalho_valor_venda ,Trabalho_consumido,  " +
                    "Dependentes, Filhos_Escola, Seguro_Defeso, Bolsa_Familia, " +
                    "Tipo_Resid, possui_Agua_Encanada, possui_Energia , possui_Telefone ,possui_esgoto , possui_computador, " +
                    "pessoas_Resid, pessoas_Menores , pessoas_aposentados " +
                    "from Tbl_Associados " + 
                    "where ID_Associado = " + lblIDAssociado.Text);

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

                lblprofissao.Text = Convert.ToString(dados[31]);
                lblcategoria.Text = Convert.ToString(dados[32]);
                lblareaatuacao.Text = Convert.ToString(dados[33]);

                lblrelacao.Text = Convert.ToString(dados[34]);
                lblutilizaembarca.Text = Convert.ToString(dados[35]);
                lblnomeEmbarca.Text = Convert.ToString(dados[36]);
                lblProp.Text = Convert.ToString(dados[37]);
                lblTipo.Text = Convert.ToString(dados[38]);
                lblTamanho.Text = Convert.ToString(dados[39]);

                lblProp.Text = Convert.ToString(dados[40]);
                lblCapPortos.Text = Convert.ToString(dados[41]);
                lblRGPMPA.Text = Convert.ToString(dados[42]);

                lblprincipaisartes.Text = Convert.ToString(dados[43]);
                lbldonoartes.Text = Convert.ToString(dados[44]);
                lblPrincipais.Text = Convert.ToString(dados[45]);
                lbllocaisvenda.Text = Convert.ToString(dados[46]);
                lblComoComerc.Text = Convert.ToString(dados[47]);

                lbldiasTrab.Text = Convert.ToString(dados[48]);
                lbldiaPesca.Text = Convert.ToString(dados[49]);
                lblProdMedia.Text = Convert.ToString(dados[50]);
                lblValorVenda.Text = Convert.ToString(dados[51]);
                lblConsumido.Text = Convert.ToString(dados[52]);

                lblDependentes.Text = Convert.ToString(dados[53]);
                lblFilhos.Text = Convert.ToString(dados[54]);
                lbldefeso.Text = Convert.ToString(dados[55]);
                lblBolsaFam.Text = Convert.ToString(dados[56]);

                lblDependentes.Text = Convert.ToString(dados[57]);
                lblFilhos.Text = Convert.ToString(dados[58]);
                lbldefeso.Text = Convert.ToString(dados[59]);
                lblBolsaFam.Text = Convert.ToString(dados[60]);

                lbltipoResid.Text = Convert.ToString(dados[61]);
                lblAgua.Text = Convert.ToString(dados[62]);
                lblEnergia.Text = Convert.ToString(dados[63]);
                lblTelefone.Text = Convert.ToString(dados[64]);

                lblEsgoto.Text = Convert.ToString(dados[65]);
                lblComputador.Text = Convert.ToString(dados[66]);
                lblPessoas.Text = Convert.ToString(dados[67]);
                lblMenores.Text = Convert.ToString(dados[68]);
                lblaposentado.Text = Convert.ToString(dados[69]);

            }

        }

    }
}