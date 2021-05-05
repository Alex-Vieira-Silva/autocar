<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Simulador.aspx.cs" Inherits="Simulador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style1
        {
            width: 100%;
            background-color: #FF9900;
        }
        .style4
        {
            color: #FFFFFF;
        }
        .style2
        {
            width: 756px;
        }
        .style5
        {
            width: 281px;
        }
        .style3
        {
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table class="style1">
        <tr>
            <td class="style4" style="text-align: left">
                <strong>-&gt;
                Simulador /
                <asp:Label ID="lblNomeCarro" runat="server"></asp:Label>
                </strong>
            </td>
        </tr>
    </table>
    <table class="style2">
        <tr>
            <td class="style5" rowspan="8">
                <br />
                <asp:Image ID="imgCar" runat="server" Height="147px" Width="160px" />
            </td>
            <td class="style3">
                <strong>Preço:</strong></td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblPreco" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>Quatidade Parcelas:</strong></td>
        </tr>
        <tr>
            <td class="style3">
                <asp:DropDownList ID="ddlQuantidade" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlQuantidade_SelectedIndexChanged">
                    <asp:ListItem Value="0">Selecione</asp:ListItem>
                    <asp:ListItem Value="12">12 X</asp:ListItem>
                    <asp:ListItem Value="24">24 X</asp:ListItem>
                    <asp:ListItem Value="36">36 X</asp:ListItem>
                    <asp:ListItem Value="48">48 X</asp:ListItem>
                    <asp:ListItem Value="60">60 X</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <strong>Resultado:</strong></td>
        </tr>
        <tr>
            <td class="style3">
                <asp:TextBox ID="txtMensagem" runat="server" Height="207px" 
                    TextMode="MultiLine" Width="391px"></asp:TextBox>
            </td>
        </tr>
        </table>
    </asp:Content>


