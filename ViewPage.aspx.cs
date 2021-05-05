using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class ViewPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strCon = ConfigurationManager.ConnectionStrings["carmediaConnectionString"].ConnectionString;
        string SQL = "SELECT * FROM paginas WHERE id = @id";
        string ID = Request.QueryString["id"];

        using (MySqlConnection conn = new MySqlConnection(strCon))
        {
            using (MySqlCommand cmd = new MySqlCommand(SQL, conn))
            {
                conn.Open();
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(ID));

                    MySqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        lblTitulo.Text = dr["nome"].ToString();
                        lblConteudo.Text = dr["conteudo"].ToString();
                    }
                }
            }
        }
    }
}