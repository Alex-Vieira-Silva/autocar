using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Web.Security;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogar_Click(object sender, EventArgs e)
    {
        string strCon = ConfigurationManager.ConnectionStrings["carmediaConnectionString"].ConnectionString;
        string SQL = "SELECT * FROM usuarios WHERE login = @login and senha = @senha";


        using (MySqlConnection conn = new MySqlConnection(strCon))
        {
            using (MySqlCommand cmd = new MySqlCommand(SQL, conn))
            {
                conn.Open();
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    cmd.Parameters.AddWithValue("@login", txtLogin.Text);
                    cmd.Parameters.AddWithValue("@senha", txtSenha.Text);

                    MySqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        FormsAuthentication.RedirectFromLoginPage(dr["nome"].ToString(), false);
                    }
                    else
                    {
                        lblErro.Text = "Usuário e/ou senha incorreto!";
                    }
                }
            }
        }
    }
}