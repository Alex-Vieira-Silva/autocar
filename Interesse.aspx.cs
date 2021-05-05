using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Interesse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblNomeCarro.Text = Request.QueryString["carro"];
        txtAssunto.Text = "Interesse Carro - " + Request.QueryString["carro"];
        txtMensagem.Text = "Olá, estou interessado no carro: " + Request.QueryString["carro"] + ".\nPode me enviar mais informações.";
    }
}