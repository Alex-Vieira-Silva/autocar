<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ViewCar.aspx.cs" Inherits="ViewCar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            background-color: #FF9900;
        }
        .style2
        {
            width: 756px;
        }
        .style3
        {
            text-align: left;
        }
        .style4
        {
            color: #FFFFFF;
        }
        .style5
        {
            width: 347px;
        }
        .style6
        {
            width: 100%;
        }
        .style7
        {
        }
        .style8
        {
            width: 153px;
            text-align: left;
        }
    .style9
    {
    }
    .style10
    {
        width: 381px;
    }
    .estiloImg img
    {
        width: 300px;
        height: 200px;
        border:none;
    }
    
    .estiloImgMini img
    {
        width: 100px;
        height: 50px;
        border:none;
    }
        .style11
        {
        }
        .style12
        {
            width: 186px;
        }
        .style13
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <br />
    <table class="style1">
        <tr>
            <td class="style4" style="text-align: left">
                <strong>-&gt;
                <asp:Label ID="lblNomeCarro" runat="server"></asp:Label>
                </strong></td>
        </tr>
    </table>
    <table class="style2">
        <tr>
            <td class="style5" rowspan="8">
                <br />
                <br />
                <table class="style6">
                    <tr>
                        <td colspan="2">
                <asp:HyperLink ID="hpImgFoto" runat="server" CssClass="estiloImg">FOTO PRINCIPAL</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="style12">
                <asp:HyperLink ID="hpImgFoto2" runat="server" CssClass="estiloImgMini">FOTO 2</asp:HyperLink>
                        </td>
                        <td class="style13">
                <asp:HyperLink ID="hpImgFoto3" runat="server" CssClass="estiloImgMini">FOTO 3</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="style11" colspan="2">
                            &nbsp;</td>
                        </tr>
                    <tr>
                        <td class="style11" colspan="2">
                <asp:LinkButton ID="LinkButton2" runat="server">Simulador</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td class="style11" colspan="2">
                <asp:LinkButton ID="LinkButton1" runat="server">Tenho Interesse</asp:LinkButton>
                        </td>
                    </tr>
                    </table>
            </td>
            <td class="style3">
                <strong>Descricação:</strong></td>
        </tr>
        <tr>
            <td class="style3">
                <asp:TextBox ID="txtDescricao" runat="server" Height="45px" 
                    TextMode="MultiLine" Width="391px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>Marca:</strong></td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblMarca" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>Ano:</strong></td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblAno" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>Preço:</strong></td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblPreco" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <table class="style6">
        <tr>
            <td style="text-align: left">
&nbsp;<table class="style1">
        <tr>
            <td class="style4" style="text-align: left">
                <strong>-&gt;
                Comentários</strong></td>
        </tr>
    </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="style6">
                    <tr>
                        <td class="style8">
                            Nome:</td>
                        <td class="style3">
                            <asp:TextBox ID="txtNome" runat="server" style="text-align: left" 
                                Width="316px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            E-mail:</td>
                        <td class="style3">
                            <asp:TextBox ID="txtEmail" runat="server" style="text-align: left" 
                                Width="316px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            Comentário:</td>
                        <td class="style3">
                            <asp:TextBox ID="txtComentario" runat="server" Height="98px" 
                                style="text-align: left" TextMode="MultiLine" Width="315px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style3">
                            <asp:Button ID="btnComentar" runat="server" Text="Comentar" 
                                onclick="btnComentar_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style7" colspan="2" style="overflow:scroll">
                            <asp:DataList ID="dtlLista" runat="server" BackColor="LightGoldenrodYellow" 
                                BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
                                Width="647px">
                                <AlternatingItemStyle BackColor="PaleGoldenrod" />
                                <FooterStyle BackColor="Tan" />
                                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                <HeaderTemplate>
                                        <table class="style6">
                    <tr>
                        <td class="style8" colspan="2">
                            -> Veja os comentários</td>
                    </tr>
                    <tr>
                        <td class="style8" colspan="2">
                            &nbsp;</td>
                    </tr>
                                </HeaderTemplate>
                                <ItemTemplate>
                                <tr>
                        <td class="style8">
                            <table class="style6">
                                <tr>
                                    <td class="style10">
                                        <asp:Label ID="lblNome" runat="server" style="font-size: large" 
                                            Text='<%# Eval("nome") %>'></asp:Label>
                                        &nbsp;-
                                        <asp:Label ID="Label1" runat="server" style="font-size: large" 
                                            Text='<%# Eval("email") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:LoginView ID="LoginView1" runat="server">
                                            <LoggedInTemplate>
                                                <asp:HyperLink ID="HyperLink1" runat="server" 
                                                    NavigateUrl='<%# Eval("id", "ExcluirComentario.aspx?ID={0}") %>' Text="Excluir"></asp:HyperLink>
                                            </LoggedInTemplate>
                                        </asp:LoginView>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9" colspan="2">
                                        <asp:Label ID="lblcomentario" runat="server" style="font-size: medium" 
                                            Text='<%# Eval("comentario") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                                    </td>
                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                </table>
                                </FooterTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:carmediaConnectionString2 %>" 
                                ProviderName="<%$ ConnectionStrings:carmediaConnectionString2.ProviderName %>" 
                                SelectCommand="SELECT * FROM [carros]"></asp:SqlDataSource>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <p>
    </p>
</asp:Content>


