using System;
using System.Web.UI;

namespace Pescadores
{
    public partial class Cadastro_Alterar : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Coleta Dados da seção anterior 
                lblIDAssoc.Text = Session["IDAssoc"].ToString();
                lblNomeAssoc.Text = Session["NomeAssoc"].ToString();

                PreencheCampos();
            }
        }

        protected void BtSalvar(object sender, EventArgs e)
        {
            string FotoDataUri = Request["fotouri"].ToString();
            string stringupdate = "update Tbl_Associados set Nome = '" + txtNome.Text + "', " +
                "Apelido = '" + txtApelido.Text + "', " +
                "Endereco = '" + txtEndereco.Text + "', " +
                "Bairro  = '" + txtBairro.Text + "', " +
                "CEP  = '" + txtCEP.Text + "', " +
                "Cidade  = '" + txtMunicipio.Text + "', " +
                "Filiacao_Pai  = '" + txtPai.Text + "', " +
                "Filiacao_Mae  = '" + txtMae.Text + "', " +
                "Nascimento  = '" + txtNascimento.Text + "', " +
                "Naturalidade  = '" + txtNaturalidade.Text + "', " +
                "Nacionalidade  = '" + txtNacionalidade.Text + "', " +
                "Escolaridade  = '" + txtEscolaridade.Text + "', " +
                "CPF  = '" + txtCPF.Text + "', " +
                "PIS  = '" + txtPIS.Text + "', " +
                "RG  = '" + txtRG.Text + "', " +
                "RG_Data_Exped  = '" + txtEmissao.Text + "', " +
                "RG_Orgao  = '" + txtEmissor.Text + "', " +
                "NIT  = '" + txtNIT.Text + "', " +
                "CEI  = '" + txtCEI.Text + "', " +
                "Titulo  = '" + txtTitulo.Text + "', " +
                "Titulo_Zona  = '" + txtZOna.Text + "', " +
                "Titulo_Secao  = '" + txtSecao.Text + "', " +
                "Estado_Civil  = '" + txtEstCivil.Text + "', " +
                "Sexo  = '" + txtsexo.Text + "', " +
                "Telefone  = '" + txtTelefone.Text + "', " +
                "email  = '" + txtemail.Text + "', " +
                "CTPS  = '" + txtsexo.Text + "', " +
                "RGP  = '" + txtRGPAtual.Text + "', " +
                "RGP_Registro  = '" + txtRGPRegistro.Text + "', " +
                "RGP_emissor  = '" + txtRGPEmissor.Text + "', " +
                "Profissao  = '" + txtProf.Text + "', " +
                "Categoria  = '" + txtCat.Text + "', " +
                "AreaAtuacao  = '" + txtAtuacao.Text + "', " +
                "Relacao_Trabalho  = '" + txtRelacao.Text + "', " +
                "Embarcacao_Utiliza  = '" + txtutilizaEmbarca.Text + "', " +
                "Embarcacao_Nome  = '" + txtNomeEmbarca.Text + "', " +
                "Embarcacao_Prop  = '" + txtPropietario.Text + "', " +
                "Embarcacao_Tipo  = '" + txtTipo.Text + "', " +
                "Embarcacao_Tamanho  = '" + txtTamanho.Text + "', " +
                "Embarcacao_PRopulsao  = '" + txtProp.Text + "', " +
                "Embarcacao_capitania  = '" + txtCapitania.Text + "', " +
                "RGP_MPA  = '" + txtRGPMPA.Text + "', " +
                "Arte_Principal  = '" + txtArtes.Text + "', " +
                "Arte_Dono  = '" + txtDonoArtes.Text + "', " +
                "Arte_Esepcies  = '" + txtPRincipais.Text + "', " +
                "Arte_locais_venda  = '" + txtLocais.Text + "', " +
                "Arte_comercializado  = '" + txtComoComerc.Text + "', " +
                "Trabalho_dias  = '" + txtDiasTrab.Text + "', " +
                "Trabalho_duracao  = '" + txtDuracao.Text + "', " +
                "Trabalho_producao  = '" + txtProdMedia.Text + "', " +
                "Trabalho_valor_venda  = '" + txtVEndaPRod.Text + "', " +
                "Trabalho_consumido  = '" + txtQuantConsumido.Text + "', " +
                "Dependentes  = '" + txtDependentes.Text + "', " +
                "Filhos_Escola  = '" + txtfilhosescola.Text + "', " +
                "Seguro_Defeso  = '" + txtsegdefeso.Text + "', " +
                "Bolsa_Familia  = '" + txtBolsafamilia.Text + "', " +
                "Tipo_Resid  = '" + txtCasaPropia.Text + "', " +
                "possui_Agua_Encanada  = '" + txtAguaEncan.Text + "', " +
                "possui_Energia  = '" + txtpossuiEnergia.Text + "', " +
                "possui_Telefone  = '" + txtpossuiTelefone.Text + "', " +
                "possui_esgoto  = '" + txtpossuiEsgoto.Text + "', " +
                "possui_computador  = '" + txtPossuiCOmput.Text + "', " +
                "pessoas_Resid  = '" + txtQuantPessoas.Text + "', " +
                "pessoas_Menores  = '" + txtQuantMenores.Text + "', " +
                "pessoas_aposentados  = '" + txtAposentado.Text + "', " +
                "renda_mensal  = '" + txtRendaAtividade.Text + "', " +
                "outra_atividade  = '" + TxtExerceOutra.Text + "', " +
                "renda_outra  = '" + txtRendaOutra.Text + "', " +
                "valor_Seguro_desemprego  = '" + txtVAlorDefeso.Text + "', " +
                "valor_bolsa_familia  = '" + txtValorBolsaFam + "', " +
                "total_renda_familiar  = '" + txtRendaFamil.Text + "', " +
                "tempo_associado  = '" + txtTempoAssoc.Text + "', " +
                "mensalidade_em_dias  = '" + txtEmdias.Text + "', " +
                "valor_mensalidade  = '" + txtValorMens.Text + "', " +
                "motivo_inadimp  = '" + txtMotivoInadimp.Text + "', " +
                "satisfeito  = '" + txtSatisfeito.Text + "', " +
                "opniao  = '" + txtOpniao.Text + "', " +
                "FotoDataURI  = '" + FotoDataUri + "' " +
                "where ID_Associado = " + lblIDAssoc.Text;

            OperacaoBanco operacao = new OperacaoBanco();
            Boolean update = operacao.Update(stringupdate);
            if (update == true)
            {
                Session["IDAssoc"] = lblIDAssoc.Text;
                Response.Redirect("FichaAssociado.aspx");
            }

        }

        private void PreencheCampos()
        {
            string stringSelect = @"select Nome,Apelido, " +
                    "Endereco,Bairro,CEP,Cidade,Filiacao_Pai,Filiacao_Mae,Nascimento,Naturalidade,Nacionalidade,Escolaridade," +
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
                    "total_renda_familiar ,tempo_associado,mensalidade_em_dias,valor_mensalidade ,motivo_inadimp, satisfeito,opniao,ID_Colonia, FotoDataURI " +
                    "from Tbl_Associados where ID_Associado = " + lblIDAssoc.Text;
            
            OperacaoBanco operacao = new OperacaoBanco();
            System.Data.SqlClient.SqlDataReader rcrdset = operacao.Select(stringSelect);
            while (rcrdset.Read())
            {
                txtNome.Text = Convert.ToString(rcrdset[0]);
                txtApelido.Text = Convert.ToString(rcrdset[1]);
                txtEndereco.Text = Convert.ToString(rcrdset[2]);
                txtBairro.Text = Convert.ToString(rcrdset[3]);
                txtCEP.Text = Convert.ToString(rcrdset[4]);
                txtMunicipio.Text = Convert.ToString(rcrdset[5]);
                txtPai.Text = Convert.ToString(rcrdset[6]);
                txtMae.Text = Convert.ToString(rcrdset[7]);
                txtNascimento.Text = Convert.ToString(rcrdset[8]);
                txtNaturalidade.Text = Convert.ToString(rcrdset[9]);
                txtNacionalidade.Text = Convert.ToString(rcrdset[10]);
                txtEscolaridade.Text = Convert.ToString(rcrdset[11]);
                txtCPF.Text = Convert.ToString(rcrdset[12]);
                txtRG.Text = Convert.ToString(rcrdset[13]);
                txtEmissor.Text = Convert.ToString(rcrdset[14]);
                txtEmissao.Text = Convert.ToString(rcrdset[15]);
                txtPIS.Text = Convert.ToString(rcrdset[16]);
                txtNIT.Text = Convert.ToString(rcrdset[17]);
                txtTitulo.Text = Convert.ToString(rcrdset[18]);
                txtZOna.Text = Convert.ToString(rcrdset[19]);
                txtSecao.Text = Convert.ToString(rcrdset[20]);
                txtCEI.Text = Convert.ToString(rcrdset[21]);
                txtEstCivil.Text = Convert.ToString(rcrdset[22]);
                txtTelefone.Text = Convert.ToString(rcrdset[23]);
                txtemail.Text = Convert.ToString(rcrdset[24]);
                txtsexo.Text = Convert.ToString(rcrdset[25]);
                txtCTPS.Text = Convert.ToString(rcrdset[26]);
                txtRGPAtual.Text = Convert.ToString(rcrdset[27]);
                txtRGPRegistro.Text = Convert.ToString(rcrdset[28]);
                txtRGPEmissor.Text = Convert.ToString(rcrdset[29]);
                txtProf.Text = Convert.ToString(rcrdset[30]);
                txtCat.Text = Convert.ToString(rcrdset[31]);
                txtAtuacao.Text = Convert.ToString(rcrdset[32]);
                txtRelacao.Text = Convert.ToString(rcrdset[33]);
                txtutilizaEmbarca.Text = Convert.ToString(rcrdset[34]);
                txtNomeEmbarca.Text = Convert.ToString(rcrdset[35]);
                txtPropietario.Text = Convert.ToString(rcrdset[36]);
                txtTipo.Text = Convert.ToString(rcrdset[37]);
                txtTamanho.Text = Convert.ToString(rcrdset[38]);
                txtProp.Text = Convert.ToString(rcrdset[39]);
                txtCapitania.Text = Convert.ToString(rcrdset[40]);
                txtRGPMPA.Text = Convert.ToString(rcrdset[41]);
                txtArtes.Text = Convert.ToString(rcrdset[42]);
                txtDonoArtes.Text = Convert.ToString(rcrdset[43]);
                txtPRincipais.Text = Convert.ToString(rcrdset[44]);
                txtLocais.Text = Convert.ToString(rcrdset[45]);
                txtComoComerc.Text = Convert.ToString(rcrdset[46]);
                txtDiasTrab.Text = Convert.ToString(rcrdset[47]);
                txtDuracao.Text = Convert.ToString(rcrdset[48]);
                txtProdMedia.Text = Convert.ToString(rcrdset[49]);
                txtVEndaPRod.Text = Convert.ToString(rcrdset[50]);
                txtQuantConsumido.Text = Convert.ToString(rcrdset[51]);
                txtDependentes.Text = Convert.ToString(rcrdset[52]);
                txtfilhosescola.Text = Convert.ToString(rcrdset[53]);
                txtsegdefeso.Text = Convert.ToString(rcrdset[54]);
                txtBolsafamilia.Text = Convert.ToString(rcrdset[55]);
                txtCasaPropia.Text = Convert.ToString(rcrdset[56]);
                txtAguaEncan.Text = Convert.ToString(rcrdset[57]);
                txtpossuiEnergia.Text = Convert.ToString(rcrdset[58]);
                txtpossuiTelefone.Text = Convert.ToString(rcrdset[59]);
                txtpossuiEsgoto.Text = Convert.ToString(rcrdset[60]);
                txtPossuiCOmput.Text = Convert.ToString(rcrdset[61]);
                txtQuantPessoas.Text = Convert.ToString(rcrdset[62]);
                txtQuantMenores.Text = Convert.ToString(rcrdset[63]);
                txtAposentado.Text = Convert.ToString(rcrdset[64]);
                txtRendaAtividade.Text = Convert.ToString(rcrdset[65]);
                TxtExerceOutra.Text = Convert.ToString(rcrdset[66]);
                txtRendaOutra.Text = Convert.ToString(rcrdset[67]);
                txtVAlorDefeso.Text = Convert.ToString(rcrdset[68]);
                txtValorBolsaFam.Text = Convert.ToString(rcrdset[69]);
                txtRendaFamil.Text = Convert.ToString(rcrdset[70]);
                txtTempoAssoc.Text = Convert.ToString(rcrdset[71]);
                txtEmdias.Text = Convert.ToString(rcrdset[72]);
                txtValorMens.Text = Convert.ToString(rcrdset[73]);
                txtMotivoInadimp.Text = Convert.ToString(rcrdset[74]);
                txtSatisfeito.Text = Convert.ToString(rcrdset[75]);
                txtOpniao.Text = Convert.ToString(rcrdset[76]);

                //monta foto
                string ScriptFoto = "<script language=javascript>document.getElementById('results').innerHTML = '<img src=\"" + Convert.ToString(rcrdset[77]) + "\"/>';</script>";
                ClientScript.RegisterStartupScript(this.GetType(), "montafoto", ScriptFoto);
            }
            ConexaoBancoSQL.fecharConexao();
            txtNome.Focus();

        }

    }
}