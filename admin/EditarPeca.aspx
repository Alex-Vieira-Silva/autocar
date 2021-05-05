<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="EditarPeca.aspx.cs" Inherits="admin_EditarPeca" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            color: #333333;
        }
        .style5
        {
            width: 270px;
            text-align: right;
        }
        .style6
        {
            text-align: left;
        }
        .style7
        {
            color: #FF0000;
        }
        .style4
        {
            width: 270px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td bgcolor="#CCCCCC" class="style3" colspan="2">
                <strong>Cadastro de Peças</strong></td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    style="color: #FF0000" />
            </td>
        </tr>
        <tr>
            <td class="style5">
                Nome:</td>
            <td class="style6">
                <asp:TextBox ID="txtNome" runat="server" style="text-align: left" Width="359px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtNome" CssClass="style7" 
                    ErrorMessage="Preencha o nome da peça">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Descrição:</td>
            <td class="style6">
                <asp:TextBox ID="txtDescricao" runat="server" Height="61px" 
                    style="text-align: left" TextMode="MultiLine" Width="364px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtDescricao" CssClass="style7" 
                    ErrorMessage="Preencha a descrição">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Marca:</td>
            <td class="style6">
                <asp:DropDownList ID="ddlMarca" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Preço:</td>
            <td class="style6">
                <asp:TextBox ID="txtPreco" runat="server" style="text-align: left" 
                    Width="359px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtPreco" CssClass="style7" ErrorMessage="Preencha o preço">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                <asp:Button ID="btnAtualizar" runat="server" 
                    Text="Atualizar" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

