<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Interesse.aspx.cs" Inherits="Interesse" %>

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
    <br />
    <table class="style1">
        <tr>
            <td class="style4" style="text-align: left">
                <strong>-&gt;
                Interesse /
                <asp:Label ID="lblNomeCarro" runat="server"></asp:Label>
                </strong>
            </td>
        </tr>
    </table>
    <table class="style2">
        <tr>
            <td class="style5" rowspan="9">
                <br />
                Caso tenha interesse neste carro, entre em contato utilizando o formulário ao 
                lado!</td>
            <td class="style3">
                <strong>Nome:</strong></td>
        </tr>
        <tr>
            <td class="style3">
                <asp:TextBox ID="txtNome" runat="server" Height="25px" Width="391px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>E-mail:</strong></td>
        </tr>
        <tr>
            <td class="style3">
                <asp:TextBox ID="txtEmail" runat="server" Height="25px" Width="391px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>Assunto:</strong></td>
        </tr>
        <tr>
            <td class="style3">
                <asp:TextBox ID="txtAssunto" runat="server" Height="25px" Width="391px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>Mensagem:</strong></td>
        </tr>
        <tr>
            <td class="style3">
                <asp:TextBox ID="txtMensagem" runat="server" Height="83px" 
                    TextMode="MultiLine" Width="391px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Text="Enviar" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>


