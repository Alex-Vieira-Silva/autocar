using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MySql.Data.MySqlClient;
using System.Configuration;

public partial class admin_Carros : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strCon = ConfigurationManager.ConnectionStrings["carmediaConnectionString"].ConnectionString;
        
        string SQL = "SELECT * FROM carros";
        MySqlConnection conn = new MySqlConnection(strCon);
        MySqlCommand cmd = new MySqlCommand(SQL, conn);

        if(conn.State == System.Data.ConnectionState.Closed)
            conn.Open();

        grdDados.DataSource = cmd.ExecuteReader();
        grdDados.DataBind();

    }
}