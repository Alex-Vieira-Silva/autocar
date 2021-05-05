using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Drawing;

public partial class admin_Inserir_Peça : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            string strCon = ConfigurationManager.ConnectionStrings["carmediaConnectionString"].ConnectionString;

            string SQL = "SELECT DISTINCT marca FROM pecas";

            using (MySqlConnection conn = new MySqlConnection(strCon))
            {
                using (MySqlCommand cmd = new MySqlCommand(SQL, conn))
                {
                    conn.Open();

                    ddlMarca.DataSource = cmd.ExecuteReader();
                    ddlMarca.DataTextField = "marca";
                    ddlMarca.DataValueField = "marca";
                    ddlMarca.DataBind();
                }
            }
        }
    }
    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        string strCon = ConfigurationManager.ConnectionStrings["carmediaConnectionString"].ConnectionString;

        string SQL = "INSERT INTO pecas(nome, descricao, marca, preco) VALUES(";
        SQL += "@nome, @descricao, @marca, @precos)";

        using (MySqlConnection conn = new MySqlConnection(strCon))
        {
            using (MySqlCommand cmd = new MySqlCommand(SQL, conn))
            {
                try
                {
                    conn.Open();

                    cmd.Parameters.AddWithValue("@nome", txtNome.Text);
                    cmd.Parameters.AddWithValue("@descricao", txtDescricao.Text);
                   // cmd.Parameters.AddWithValue("@marca", txtMarca.Text);
                    cmd.Parameters.AddWithValue("@preco", txtPreco.Text);

                    cmd.ExecuteNonQuery();

                    lblMsg.Text = "Peça cadastrada com sucesso!";
                    lblMsg.ForeColor = Color.Blue;
                }
                catch (Exception ex)
                {
                    lblMsg.Text = "Erro ao inserir a peça!";
                    lblMsg.ForeColor = Color.Red;
                }
            }
        }
    }
}