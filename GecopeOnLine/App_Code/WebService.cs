using System;
using System.Linq;
using System.Web.Services;
using System.Data.SqlClient;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://gecope.azurewebsites.net/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{
    public WebService()
    {
        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string Identificador(string user, string pwd)
    {
        string url = "https://gecope.azurewebsites.net";
        // localiza usuario
        string stringSelect = "select Nome,senha,ID_Colonia from Tbl_Colonias where usuario = '" + user + "'";
        OperacaoBanco operacao = new OperacaoBanco();
        System.Data.SqlClient.SqlDataReader rcrdset = operacao.Select(stringSelect);

        while (rcrdset.Read())
        {
            if (pwd == Convert.ToString(rcrdset[1]))
            {
                string NomeCol = Convert.ToString(rcrdset[0]);
                string IDCol = Convert.ToString(rcrdset[2]);

                string vValida1, vValida2;
                vValida1 = DateTime.Now.ToString("dd");
                vValida2 = DateTime.Now.ToString("MM");
                int vValida3 = Convert.ToInt16(vValida1) * Convert.ToInt16(vValida2);
                string vValida4 = vValida3.ToString();

                url = "https://gecope.azurewebsites.net/Index.aspx?p1=" + vValida4 + "&p2=" + NomeCol + "&p3=" + IDCol;
            }
        }

        ConexaoBancoSQL.fecharConexao();
        return url;

    }
}

public class ConexaoBancoSQL

{
    private static SqlConnection objConexao = null;

    private string stringconnection1;

    public void tentarAbrirConexaoRemota()
    {
        objConexao = new SqlConnection();
        objConexao.ConnectionString = stringconnection1;
        objConexao.Open();
    }

    public ConexaoBancoSQL()
    {
        // *** STRING DE CONEXÃO COM BANCO DE DADOS - Atenção! Alterar dados conforme seu servidor
        stringconnection1 = @"Server=tcp:dbservergecope.database.windows.net,1433;Initial Catalog=dbgecope;Persist Security Info=False;User ID=admgecope;Password=Pwd@2016;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
        try
        {
            tentarAbrirConexaoRemota();
        }
        catch
        {
            Console.WriteLine("Atenção! Não foi possível Conectar ao Servidor de Banco de Dados.");
        }
    }

    public static SqlConnection getConexao()
    {
        new ConexaoBancoSQL();
        return objConexao;
    }
    public static void fecharConexao()
    {
        objConexao.Close();
    }
}

public class OperacaoBanco
{
    /*Classe para Operações com Banco de Dados SQL (select, insert, update e delete)
    Autor    : Carlos Sales Natural Tecnologia https://github.com/CarlosSalesNaturalTec 
    Ano      : 2016
    Recursos : ASP.NET / C# / SQL */

    private SqlCommand TemplateMethod(String query)
    {
        SqlConnection Conexao = ConexaoBancoSQL.getConexao();
        SqlCommand Commando = new SqlCommand(query, Conexao);
        try
        {
            Commando.ExecuteNonQuery();
            return Commando;
        }
        catch
        {
            return Commando;
        }
    }

    public SqlDataReader Select(String query)
    {
        SqlDataReader dadosObtidos = TemplateMethod(query).ExecuteReader();
        return dadosObtidos;
    }

    public Boolean Insert(String query)
    {
        SqlConnection Conexao = ConexaoBancoSQL.getConexao();
        SqlCommand Commando = new SqlCommand(query, Conexao);
        try
        {
            Commando.ExecuteNonQuery();
            return true;
        }
        catch
        {
            return false;
        }
    }

    public Boolean Update(String query)
    {
        SqlConnection Conexao = ConexaoBancoSQL.getConexao();
        SqlCommand Commando = new SqlCommand(query, Conexao);
        try
        {
            Commando.ExecuteNonQuery();
            return true;
        }
        catch
        {
            return false;
        }
    }

    public Boolean Delete(String query)
    {
        SqlConnection Conexao = ConexaoBancoSQL.getConexao();
        SqlCommand Commando = new SqlCommand(query, Conexao);
        try
        {
            Commando.ExecuteNonQuery();
            return true;
        }
        catch
        {
            return false;
        }
    }

}


