using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class admin_Taxa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            string strCon = ConfigurationManager.ConnectionStrings["carmediaConnectionString"].ConnectionString;

            string SQL = "SELECT * FROM config WHERE id = @id";

            int ID = 1;

            using (MySqlConnection conn = new MySqlConnection(strCon))
            {
                using (MySqlCommand cmd = new MySqlCommand(SQL, conn))
                {
                    cmd.Parameters.AddWithValue("@id", ID);

                    conn.Open();

                    MySqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        txtTitulo.Text = dr["titulo"].ToString();
                        txtTaxaJuro.Text = dr["taxa_juro"].ToString();
                    }
                }
            }
        }



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strCon = ConfigurationManager.ConnectionStrings["carmediaConnectionString"].ConnectionString;

        string SQL = "UPDATE config SET titulo = @titulo, taxa_juro = @taxa WHERE id = @id";

        int ID = 1;

        using (MySqlConnection conn = new MySqlConnection(strCon))
        {
            using (MySqlCommand cmd = new MySqlCommand(SQL, conn))
            {
                cmd.Parameters.AddWithValue("@titulo", txtTitulo.Text);
                cmd.Parameters.AddWithValue("@taxa", txtTaxaJuro.Text);
                cmd.Parameters.AddWithValue("@id", ID);

                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    lblMsg.Text = "Configurações Atualizada com sucesso!";
                }
                catch (Exception ex)
                {
                    lblMsg.Text = "Erro ao atualizar a configuração da aplicação!";
                }

            }

        }
    }
}