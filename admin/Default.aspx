<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 400px;
    }
    .style2
    {
        text-align: left;
    }
    .style3
    {
        text-align: left;
        color: #000000;
    }
    .style4
    {
        text-align: left;
        color: #FFFFFF;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <br />
    <asp:Label ID="lblErro" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
    <br />
    <br />
<table align="center" class="style1">
    <tr>
        <td bgcolor="#FF6600" class="style4" colspan="2">
            <strong>-&gt; Administração</strong></td>
    </tr>
    <tr>
        <td class="style3">
            Login:</td>
        <td class="style2">
            <asp:TextBox ID="txtLogin" runat="server" Width="203px" 
                style="margin-right: 0px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtLogin" ErrorMessage="Preencha o campo login" 
                style="color: #FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Senha:</td>
        <td class="style2">
            <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" Width="202px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtSenha" ErrorMessage="Preencha o campo senha" 
                style="color: #FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style2">
            <asp:Button ID="btnLogar" runat="server" Text="Logar" 
                onclick="btnLogar_Click" />
        </td>
    </tr>
</table>
</asp:Content>


