using System;
using System.Web.UI;
using System.Web.UI.HtmlControls;

namespace Pescadores
{
    public partial class Cadastro_Novo2 : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Coleta Dados da seção anterior 
                lblIDCol.Text = Session["IDCol"].ToString();
                lblColonia.Text = Session["Colonia_Nome"].ToString();
                lblUF.Text = Session["Colonia_UF"].ToString();
            }

        }

        protected void BtSalvar(object sender, EventArgs e)
        {
            string FotoDataUri = Request["fotouri"].ToString();
            int tamanho = FotoDataUri.Length;

            string emissao = DateTime.Now.ToString("dd/MM/yyyy");

            // string INSERT
            string stringinsert = @"INSERT INTO Tbl_Associados (ID_Colonia,Nome,Apelido,Colonia, " +
                    "Endereco,Bairro,CEP,Cidade,UF,Filiacao_Pai,Filiacao_Mae,Nascimento,Naturalidade,Nacionalidade,Escolaridade," +
                    "CPF,RG,RG_Orgao,RG_Data_Exped,PIS,NIT, " +
                    "Titulo,Titulo_Zona,Titulo_Secao,CEI,Estado_Civil,Telefone,email,Sexo,   " +
                    "CTPS,RGP,RGP_Registro,RGP_emissor,Profissao,Categoria, " +
                    "AreaAtuacao,Relacao_Trabalho,Embarcacao_Utiliza,Embarcacao_Nome,Embarcacao_Prop,Embarcacao_Tipo, " +
                    "Embarcacao_Tamanho,Embarcacao_PRopulsao,Embarcacao_capitania,RGP_MPA,Arte_Principal,Arte_Dono,  " +
                    "Arte_Esepcies,Arte_locais_venda,Arte_comercializado,Trabalho_dias,Trabalho_duracao,Trabalho_producao, " +
                    "Trabalho_valor_venda,Trabalho_consumido, " +
                    "Dependentes,Filhos_Escola,Seguro_Defeso,Bolsa_Familia,Tipo_Resid,possui_Agua_Encanada,  " +
                    "possui_Energia,possui_Telefone,possui_esgoto,possui_computador,pessoas_Resid, pessoas_Menores, " +
                    "pessoas_aposentados,renda_mensal,outra_atividade,renda_outra,valor_Seguro_desemprego,valor_bolsa_familia, " +
                    "total_renda_familiar ,tempo_associado,mensalidade_em_dias,valor_mensalidade ,motivo_inadimp, satisfeito,opniao, CTPS_Serie,FotoDataURI  " +
                    ") VALUES (" + lblIDCol.Text +
                    ",'" + txtNome.Text + "', '" + txtApelido.Text + "', '" + lblColonia.Text + "', '" + txtEndereco.Text +
                    "', '" + txtBairro.Text + "', '" + txtCEP.Text + "', '" + txtMunicipio.Text + "', '" + lblUF.Text + "', '" + txtPai.Text + "', " +
                    "'" + txtMae.Text + "', '" + txtNascimento.Text + "', '" + txtNaturalidade.Text + "', '" + txtNacionalidade.Text + "', " +
                    "'" + txtEscolaridade.Text + "', " +
                    "'" + txtCPF.Text + "', " +
                    "'" + txtRG.Text + "', " +
                    "'" + txtEmissor.Text + "', " +
                    "'" + txtEmissao.Text + "', " +
                    "'" + txtPIS.Text + "', " +
                    "'" + txtNIT.Text + "', " +
                    "'" + txtTitulo.Text + "', " +
                    "'" + txtZOna.Text + "', " +
                    "'" + txtSecao.Text + "', " +
                    "'" + txtCEI.Text + "', " +
                    "'" + txtEstCivil.Text + "', " +
                    "'" + txtTelefone.Text + "', " +
                    "'" + txtemail.Text + "', " +
                    "'" + txtsexo.Text + "', " +
                    "'" + txtCTPS.Text + "', " +
                    "'" + txtRGPAtual.Text + "', " +
                    "'" + txtRGPRegistro.Text + "', " +
                    "'" + txtRGPEmissor.Text + "', " +
                    "'" + txtProf.Text + "', " +
                    "'" + txtCat.Text + "', " +
                    "'" + txtAtuacao.Text + "', " +
                    "'" + txtRelacao.Text + "', " +
                    "'" + txtutilizaEmbarca.Text + "', " +
                    "'" + txtNomeEmbarca.Text + "', " +
                    "'" + txtPropietario.Text + "', " +
                    "'" + txtTipo.Text + "', " +
                    "'" + txtTamanho.Text + "', " +
                    "'" + txtProp.Text + "', " +
                    "'" + txtCapitania.Text + "', " +
                    "'" + txtRGPMPA.Text + "', " +
                    "'" + txtArtes.Text + "', " +
                    "'" + txtDonoArtes.Text + "', " +
                    "'" + txtPRincipais.Text + "', " +
                    "'" + txtLocais.Text + "', " +
                    "'" + txtComoComerc.Text + "', " +
                    "'" + txtDiasTrab.Text + "', " +
                    "'" + txtDuracao.Text + "', " +
                    "'" + txtProdMedia.Text + "', " +
                    "'" + txtVEndaPRod.Text + "', " +
                    "'" + txtQuantConsumido.Text + "', " +
                    "'" + txtDependentes.Text + "', " +
                    "'" + txtfilhosescola.Text + "', " +
                    "'" + txtsegdefeso.Text + "', " +
                    "'" + txtBolsafamilia.Text + "', " +
                    "'" + txtCasaPropia.Text + "', " +
                    "'" + txtAguaEncan.Text + "', " +
                    "'" + txtpossuiEnergia.Text + "', " +
                    "'" + txtpossuiTelefone.Text + "', " +
                    "'" + txtpossuiEsgoto.Text + "', " +
                    "'" + txtPossuiCOmput.Text + "', " +
                    "'" + txtQuantPessoas.Text + "', " +
                    "'" + txtQuantMenores.Text + "', " +
                    "'" + txtAposentado.Text + "', " +
                    "'" + txtRendaAtividade.Text + "', " +
                    "'" + TxtExerceOutra.Text + "', " +
                    "'" + txtRendaOutra.Text + "', " +
                    "'" + txtVAlorDefeso.Text + "', " +
                    "'" + txtValorBolsaFam.Text + "', " +
                    "'" + txtRendaFamil.Text + "', " +
                    "'" + txtTempoAssoc.Text + "', " +
                    "'" + txtEmdias.Text + "', " +
                    "'" + txtValorMens.Text + "', " +
                    "'" + txtMotivoInadimp.Text + "', " +
                    "'" + txtSatisfeito.Text + "', " +
                    "'" + txtOpniao.Text + "', " +
                    "'" + emissao + "', " +
                    "'" + tamanho.ToString() + "' " +
                    ")"; 

            OperacaoBanco operacao = new OperacaoBanco();
            bool inserir = operacao.Insert(stringinsert);
            ConexaoBancoSQL.fecharConexao();

            if (inserir == true)
            {
                VerificaID();
            }
            else
            {
                Response.Write("<script>alert('Problemas ao Salvar. Verifique os Dados');</script>");
            }

        }

        private void VerificaID()
        {
            string idassociado = "";
            string stringSelect = @"select ID_Associado,Nome from Tbl_Associados" +
               " where (ID_Colonia = " + lblIDCol.Text +
               " and nome ='" + txtNome.Text + "') order by ID_Associado";

            OperacaoBanco operacao = new OperacaoBanco();
            System.Data.SqlClient.SqlDataReader rcrdset = operacao.Select(stringSelect);
            while (rcrdset.Read())
            {
                idassociado = Convert.ToString(rcrdset[0]);
            }
            ConexaoBancoSQL.fecharConexao();

            // abre ficha para impressão
            Session["IDAssoc"] = idassociado;
            Response.Redirect("FichaAssociado.aspx");

        }

        private void LimpaCampos()
        {
            txtNome.Text = "";
            txtApelido.Text = "";
            txtEndereco.Text = "";
            txtCEP.Text = "";
            txtBairro.Text = "";
            txtMunicipio.Text = "";
            txtPai.Text = "";
            txtMae.Text = "";
            txtNascimento.Text = "";
            txtNaturalidade.Text = "";
            txtNacionalidade.Text = "";
            txtEscolaridade.Text = "";
            txtCPF.Text = "";
            txtRG.Text = "";
            txtEmissor.Text = "";
            txtEmissao.Text = "";
            txtPIS.Text = "";
            txtNIT.Text = "";
            txtTitulo.Text = "";
            txtZOna.Text = "";
            txtSecao.Text = "";
            txtCEI.Text = "";
            txtEstCivil.Text = "";
            txtTelefone.Text = "";
            txtemail.Text = "";
            txtsexo.Text = "";
            txtCTPS.Text = "";
            txtRGPAtual.Text = "";
            txtRGPRegistro.Text = "";
            txtRGPEmissor.Text = "";
            txtProf.Text = "";
            txtCat.Text = "";
            txtAtuacao.Text = "";
            txtRelacao.Text = "";
            txtutilizaEmbarca.Text = "";
            txtNomeEmbarca.Text = "";
            txtPropietario.Text = "";
            txtTipo.Text = "";
            txtTamanho.Text = "";
            txtProp.Text = "";
            txtCapitania.Text = "";
            txtRGPMPA.Text = "";
            txtArtes.Text = "";
            txtDonoArtes.Text = "";
            txtPRincipais.Text = "";
            txtLocais.Text = "";
            txtComoComerc.Text = "";
            txtDiasTrab.Text = "";
            txtDuracao.Text = "";
            txtProdMedia.Text = "";
            txtVEndaPRod.Text = "";
            txtQuantConsumido.Text = "";
            txtDependentes.Text = "";
            txtfilhosescola.Text = "";
            txtsegdefeso.Text = "";
            txtBolsafamilia.Text = "";
            txtCasaPropia.Text = "";
            txtAguaEncan.Text = "";
            txtpossuiEnergia.Text = "";
            txtpossuiTelefone.Text = "";
            txtpossuiEsgoto.Text = "";
            txtPossuiCOmput.Text = "";
            txtQuantPessoas.Text = "";
            txtQuantMenores.Text = "";
            txtAposentado.Text = "";
            txtRendaAtividade.Text = "";
            TxtExerceOutra.Text = "";
            txtRendaOutra.Text = "";
            txtVAlorDefeso.Text = "";
            txtValorBolsaFam.Text = "";
            txtRendaFamil.Text = "";
            txtTempoAssoc.Text = "";
            txtEmdias.Text = "";
            txtValorMens.Text = "";
            txtMotivoInadimp.Text = "";
            txtSatisfeito.Text = "";
            txtOpniao.Text = "";

            txtNome.Focus();
        }

    }
}