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
            string param71, string param72, string param73, string param74, string param75, string param76, string param77, string param78, string param79)
        {

            string emissao = DateTime.Now.ToString("dd/MM/yyyy");
            string stringinsert = "insert into Tbl_Associados (Nome,Apelido,Endereco,CEP,Bairro,Cidade ,UF,Filiacao_Pai,Filiacao_Mae, " +
                "Nascimento,Naturalidade,Nacionalidade,Escolaridade,CPF,RG,RG_Orgao,RG_Data_Exped,Titulo,PIS  " +
                ") values ('" + param1 + "', 18)";
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
