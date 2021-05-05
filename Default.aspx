<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 41px;
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            width: 41px;
            text-align: center;
        }
        .style5
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p>
        <asp:SqlDataSource ID="dsCarros" runat="server" 
            ConnectionString="<%$ ConnectionStrings:carmediaConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:carmediaConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM carros">
        </asp:SqlDataSource>
    </p>
    <p class="style5" style="background-color: #FF9933; color: #FFFFFF;">
        <strong>-&gt; Carros</strong><center>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="dsCarros" 
            RepeatColumns="4" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table class="style1">
                    <tr>
                        <td class="style3">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("modelo") %>' 
                                style="color: #FF0000; font-weight: 700"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Image ID="Image1" runat="server" Height="75px" Width="217px" 
                                ImageUrl='<%# Eval("foto1", "fotos/{0}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            <strong>Marca:</strong>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Marca") %>'></asp:Label>
                            </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            <strong>Ano:</strong>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Ano") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            <strong>Preço:</strong>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Preco", "{0:C}") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="imagens/info.png" 
                                NavigateUrl='<%# Eval("id", "ViewCar.aspx?id={0}") %>'>HyperLink</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList></center>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>


