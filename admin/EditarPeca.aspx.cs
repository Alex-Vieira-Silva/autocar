using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class admin_EditarPeca : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strCon = ConfigurationManager.ConnectionStrings["carmediaConnectionString"].ConnectionString;

        string SQL = "SELECT * FROM pecas WHERE id = @id";

        using (MySqlConnection conn = new MySqlConnection(strCon))
        {
            using (MySqlCommand cmd = new MySqlCommand(SQL, conn))
            {
                conn.Open();

                cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Request.QueryString["id"]));
                MySqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    txtNome.Text = dr["nome"].ToString();
                    txtDescricao.Text = dr["descricao"].ToString();
                    txtPreco.Text = dr["preco"].ToString();
                }
            }
        }
    }

    protected void btnAtualizar_Click(object sender, EventArgs e)
    {

    }
}