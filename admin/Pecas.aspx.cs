using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class admin_Pecas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strCon = ConfigurationManager.ConnectionStrings["carmediaConnectionString"].ConnectionString;

        string SQL = "SELECT * FROM pecas";
        MySqlConnection conn = new MySqlConnection(strCon);
        MySqlCommand cmd = new MySqlCommand(SQL, conn);

        if (conn.State == System.Data.ConnectionState.Closed)
            conn.Open();

        GridView1.DataSource = cmd.ExecuteReader();
        GridView1.DataBind();
    }
}