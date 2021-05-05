<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Pecas.aspx.cs" Inherits="Pecas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            text-align: left;
        }
        .style1
        {
            width: 100%;
        }
        .style3
        {
            text-align: center;
        }
        .style2
        {
            width: 41px;
        }
        .style4
        {
            width: 41px;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table style="width: 965px">
        <tr>
            <td>
                <p class="style5" 
                    style="background-color: #FF9933; color: #FFFFFF; width: 1000px">
                    <strong>Marca:
                    <asp:DropDownList ID="ddl" runat="server" Height="16px" Width="149px" 
                        AutoPostBack="True" onselectedindexchanged="ddl_SelectedIndexChanged">
                    </asp:DropDownList>
                    </strong></td>
        </tr>
    </table>
    <p class="style5" style="background-color: #FF9933; color: #FFFFFF;">
        <strong>-&gt; Pecas</strong><center>
        
        <asp:DataList ID="dataPecas" runat="server" 
            RepeatColumns="4" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table class="style1">
                    <tr>
                        <td class="style3">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("nome") %>' 
                                style="color: #FF0000; font-weight: 700"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Image ID="Image1" runat="server" Height="75px" Width="217px" 
                                ImageUrl='<%# Eval("marca", "marcas/{0}") %>' />
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
                            <strong>Preço:</strong>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Preco", "{0:C}") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="imagens/info.png" 
                                NavigateUrl='<%# Eval("id", "ViewPecas.aspx?id={0}") %>'>HyperLink</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </center>
    </p>
</asp:Content>

