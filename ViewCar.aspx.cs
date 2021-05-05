using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

public partial class ViewCar : System.Web.UI.Page
{

    public DataSet getComentarios()
    {
        string strCon = ConfigurationManager.ConnectionStrings["carmediaConnectionString"].ConnectionString;
        string SQL = "SELECT * FROM comentarios WHERE carro = @id";
        string ID = Request.QueryString["id"];
        DataSet ds = new DataSet();
        using (MySqlConnection conn = new MySqlConnection(strCon))
        {
            using (MySqlCommand cmd = new MySqlCommand(SQL, conn))
            {
                conn.Open();
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(ID));

                    MySqlDataAdapter ad = new MySqlDataAdapter(cmd);
                    
                    ad.Fill(ds);
                }
            }
        }

        return ds;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            dtlLista.DataSource = getComentarios();
            dtlLista.DataBind();
        }

        string strCon = ConfigurationManager.ConnectionStrings["carmediaConnectionString"].ConnectionString;
        string SQL = "SELECT * FROM carros WHERE id = @id";
        string ID = Request.QueryString["id"];

        using(MySqlConnection conn = new MySqlConnection(strCon))
        {
            using(MySqlCommand cmd = new MySqlCommand(SQL, conn)){
                conn.Open();
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(ID));
                    
                    MySqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        txtDescricao.Text = dr["descricao"].ToString();
                        lblMarca.Text = dr["marca"].ToString();
                        lblAno.Text = dr["ano"].ToString();
                        lblPreco.Text = String.Format("{0:C}", Convert.ToDouble(dr["preco"]));
                        lblNomeCarro.Text = dr["modelo"].ToString();
                        LinkButton1.PostBackUrl = "Interesse.aspx?Carro=" + dr["marca"].ToString() + " " + dr["modelo"].ToString();
                        LinkButton2.PostBackUrl = "Simulador.aspx?id=" + dr["id"].ToString();

                        hpImgFoto.ImageUrl = "fotos/" + dr["foto1"].ToString();
                        hpImgFoto.NavigateUrl = "fotos/" + dr["foto1"].ToString();
                        hpImgFoto.Attributes.Add("rel", "lightbox[roadtrip]");
                        hpImgFoto.Attributes.Add("title", "Foto do " + dr["modelo"].ToString() + " " + dr["marca"].ToString() + " - Ano: " + dr["ano"].ToString());

                        hpImgFoto2.ImageUrl = "fotos/" + dr["foto2"].ToString();
                        hpImgFoto2.NavigateUrl = "fotos/" + dr["foto2"].ToString();
                        hpImgFoto2.Attributes.Add("rel", "lightbox[roadtrip]");
                        hpImgFoto2.Attributes.Add("title", "Foto do " + dr["modelo"].ToString() + " " + dr["marca"].ToString() + " - Ano: " + dr["ano"].ToString());


                        hpImgFoto3.ImageUrl = "fotos/" + dr["foto3"].ToString();
                        hpImgFoto3.NavigateUrl = "fotos/" + dr["foto3"].ToString();
                        hpImgFoto3.Attributes.Add("rel", "lightbox[roadtrip]");
                        hpImgFoto3.Attributes.Add("title", "Foto do " + dr["modelo"].ToString() + " " + dr["marca"].ToString() + " - Ano: " + dr["ano"].ToString());

                    }
                }
            }
        }
    }

    protected void btnComentar_Click(object sender, EventArgs e)
    {
        string strCon = ConfigurationManager.ConnectionStrings["carmediaConnectionString"].ConnectionString;
        string SQL = "INSERT INTO comentarios (nome, email, comentario, carro) VALUES (@nome, @email, @comentario, @carro)";
        string ID = Request.QueryString["id"];

        using (MySqlConnection conn = new MySqlConnection(strCon))
        {
            using (MySqlCommand cmd = new MySqlCommand(SQL, conn))
            {
                conn.Open();
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    cmd.Parameters.AddWithValue("@nome", txtNome.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@comentario", txtComentario.Text);
                    cmd.Parameters.AddWithValue("@carro", Convert.ToInt32(ID));
                    cmd.ExecuteNonQuery();
                }
            }
        }

        dtlLista.DataSource = getComentarios();
        dtlLista.DataBind();
    }
}