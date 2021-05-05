using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class Simulador : System.Web.UI.Page
{
    private double valor_carro = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
            string strCon = ConfigurationManager.ConnectionStrings["carmediaConnectionString"].ConnectionString;

            string SQL = "SELECT * FROM carros WHERE id = @id";

            int ID = Convert.ToInt32(Request.QueryString["id"]);

            using (MySqlConnection conn = new MySqlConnection(strCon))
            {
                using (MySqlCommand cmd = new MySqlCommand(SQL, conn))
                {
                    cmd.Parameters.AddWithValue("@id", ID);

                    conn.Open();

                    MySqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        lblNomeCarro.Text = dr["modelo"].ToString();
                        lblPreco.Text = String.Format("{0:C}", Convert.ToDouble(dr["preco"]));
                        valor_carro = Convert.ToDouble(dr["preco"]);
                        imgCar.ImageUrl = "fotos/" + dr["foto1"].ToString();
                    }
                }
        }
    }
    protected void ddlQuantidade_SelectedIndexChanged(object sender, EventArgs e)
    {
        string msg = "----------------------------------------------";
        msg += "        INICIANDO SIMULADOR FINANCEIRO\n";
        msg += "----------------------------------------------\n";
        msg += "Prestações: " + ddlQuantidade.SelectedValue + " X\n";
        msg += "Taxa NewCar: " + getTaxa() + "%\n";
        double parcela_normal = (valor_carro/(Convert.ToDouble(ddlQuantidade.SelectedValue)));
        msg += "Valor Parcela (normal): " + parcela_normal.ToString();
        msg += "\nValor Parcela (juro): " + (parcela_normal * Math.Pow((getTaxa()/100) + 1, Convert.ToDouble(ddlQuantidade.SelectedValue)));
        msg += "\nTotal Parcelado " + (parcela_normal * Math.Pow((getTaxa() / 100) + 1, Convert.ToDouble(ddlQuantidade.SelectedValue))) * Convert.ToInt32(ddlQuantidade.SelectedValue);
        txtMensagem.Text = msg;
    }


    private double getTaxa()
    {
        string strCon = ConfigurationManager.ConnectionStrings["carmediaConnectionString"].ConnectionString;
        string SQL = "SELECT * FROM config WHERE id = 1";

        double taxa = 0;
        using (MySqlConnection conn = new MySqlConnection(strCon))
        {
            using (MySqlCommand cmd = new MySqlCommand(SQL, conn))
            {
                conn.Open();

                MySqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    taxa = Convert.ToDouble(dr["taxa_juro"]);
                }
            }
        }

        return taxa;
    }
}