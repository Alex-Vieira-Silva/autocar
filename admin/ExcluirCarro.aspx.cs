using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;

public partial class admin_ExcluirCarro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblCodigo.Text = Request.QueryString["id"];
    }
    protected void btnExcluir_Click(object sender, EventArgs e)
    {
        string strCon = ConfigurationManager.ConnectionStrings["carmediaConnectionString"].ConnectionString;

        string SQL = "DELETE FROM carros WHERE id = @id";
        MySqlConnection conn = new MySqlConnection(strCon);
        
        MySqlCommand cmd = new MySqlCommand(SQL, conn);
        
        cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Request.QueryString["id"]));

        if (conn.State == System.Data.ConnectionState.Closed)
            conn.Open();

        cmd.ExecuteNonQuery();
    }
}