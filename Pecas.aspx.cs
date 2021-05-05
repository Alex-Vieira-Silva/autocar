using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;

public partial class Pecas : System.Web.UI.Page
{
    private static string strCon = ConfigurationManager.ConnectionStrings["carmediaConnectionString"].ConnectionString;
    
    private string SQL = "SELECT * from pecas";
    
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            ddl.DataSource = fillddl();
            ddl.DataTextField = "marca";
            ddl.DataValueField = "marca";
            ddl.DataBind();
            ddl.Items.Insert(0, new ListItem("-- Todas as marcas --"));
        }

        dataPecas.DataSource = fillPecas();
        dataPecas.DataBind();
    }

    public MySqlDataReader fillddl()
    {
        string SQL = "SELECT DISTINCT marca from pecas";
        MySqlDataReader dr = null;
        MySqlConnection conn = new MySqlConnection(strCon);

        MySqlCommand cmd = new MySqlCommand(SQL, conn);
            
                conn.Open();
                if (conn.State == System.Data.ConnectionState.Open)
                {
        

                    dr = cmd.ExecuteReader();
                }
            

        return dr;
    }

    public MySqlDataReader fillPecas()
    {
        MySqlDataReader dr = null;
        MySqlConnection conn = new MySqlConnection(strCon);

        MySqlCommand cmd = new MySqlCommand();

        if (!ddl.Text.Equals("-- Todas as marcas --"))
        {
            SQL += " WHERE marca = @marca";
            cmd.Parameters.AddWithValue("@marca", ddl.Text);
        }
        else 
        {
            SQL = "SELECT * FROM pecas";
        }

        cmd.Connection = conn;
        cmd.CommandText = SQL;
        

        conn.Open();
        if (conn.State == System.Data.ConnectionState.Open)
        {
            dr = cmd.ExecuteReader();
        }


        return dr;
    }
    protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}