using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Pescadores
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {        
        [WebMethod]
        public string SalvarRegistro(string param1, string param2, string param3, string param4, string param5,string param6, string param7, string param8, string param9, string param10,
            string param11, string param12, string param13, string param14, string param15, string param16, string param17, string param18, string param19, string param20, 
            string param21, string param22, string param23, string param24, string param25, string param26, string param27, string param28, string param29, string param30,
            string param31, string param32, string param33, string param34, string param35, string param36, string param37, string param38, string param39, string param40,
            string param41, string param42, string param43, string param44, string param45, string param46, string param47, string param48, string param49, string param50,
            string param51, string param52, string param53, string param54, string param55, string param56, string param57, string param58, string param59, string param60,
            string param61, string param62, string param63, string param64, string param65, string param66, string param67, string param68, string param69, string param70,
            string param71, string param72, string param73, string param74, string param75, string param76, string param77, string param78, string param79, string param80,
            string param81, string param82)
        {            
            string stringinsert = "insert into Tbl_Associados (Nome,Apelido,Endereco,CEP,Bairro,Cidade ,UF,Filiacao_Pai,Filiacao_Mae,Nascimento, " +
                "Naturalidade,Nacionalidade,Escolaridade,CPF,RG,RG_Orgao,RG_Data_Exped,Titulo,PIS,NIT, " +
                "CEI,Estado_Civil , Telefone ,email , sexo,CTPS ,RGP ,RGP_Registro ,RGP_emissor, Profissao, " +
                "Categoria ,AreaAtuacao , Relacao_Trabalho , Embarcacao_Utiliza , Embarcacao_Nome , Embarcacao_Prop ,Embarcacao_Tipo ,Embarcacao_Tamanho ,Embarcacao_PRopulsao, Embarcacao_capitania," +
                "RGP_MPA ,Arte_Principal , Arte_Quant,Arte_Dono ,Arte_Esepcies ,Arte_locais_venda , Arte_comercializado , Trabalho_dias , Trabalho_duracao,Trabalho_producao , " +
                "Trabalho_valor_venda ,Trabalho_consumido ,Dependentes , Filhos_Escola , Seguro_Defeso , Bolsa_Familia, Tipo_Resid ,possui_Agua_Encanada , possui_Energia , possui_Telefone ," +
                "possui_esgoto ,possui_computador , pessoas_Resid , pessoas_Menores ,pessoas_aposentados , renda_mensal, outra_atividade ,  renda_outra , valor_Seguro_desemprego ,valor_bolsa_familia," +
                "total_renda_familiar , tempo_associado ,mensalidade_em_dias ,valor_mensalidade ,motivo_inadimp , satisfeito ,opniao , FotoDataURI ,   " +
                "ID_Colonia, Colonia,CTPS_Serie " +
                ") values " + 
                "('" + param1 + "', '" + param2 + "','" + param3 + "','" + param4 + "','" + param5 + "','" + param6 + "','" + param7 + "','" + param8 + "','" + param9 + "','" + param10 +
                "','" + param11 + "', '" + param12 + "','" + param13 + "','" + param14 + "','" + param15 + "','" + param16 + "','" + param17 + "','" + param18 + "','" + param19 + "','" + param20 +
                "','" + param21 + "', '" + param22 + "','" + param23 + "','" + param24 + "','" + param25 + "','" + param26 + "','" + param27 + "','" + param28 + "','" + param29 + "','" + param30 +
                "','" + param31 + "', '" + param32 + "','" + param33 + "','" + param34 + "','" + param35 + "','" + param36 + "','" + param37 + "','" + param38 + "','" + param39 + "','" + param40 +
                "','" + param41 + "', '" + param42 + "','" + param43 + "','" + param44 + "','" + param45 + "','" + param46 + "','" + param47 + "','" + param48 + "','" + param49 + "','" + param50 +
                "','" + param51 + "', '" + param52 + "','" + param53 + "','" + param54 + "','" + param55 + "','" + param56 + "','" + param57 + "','" + param58 + "','" + param59 + "','" + param60 +
                "','" + param71 + "', '" + param72 + "','" + param73 + "','" + param74 + "','" + param75 + "','" + param76 + "','" + param77 + "','" + param78 + "'," + param79 + ",'" + param80 +
                "','" + param81 + "'" +
                ")";
            string url = "";

            OperacaoBanco operacao = new OperacaoBanco();
            bool inserir = operacao.Insert(stringinsert);
            ConexaoBancoSQL.fecharConexao();

            if (inserir == true)
            {
                url = "../CadastroAssociado.aspx";
            }
            else
            {
                url = "../Sorry.aspx";
            }

            return url;
        }
    }
}
