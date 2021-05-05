<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Taxa.aspx.cs" Inherits="admin_Taxa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 327px;
        }
        .style4
        {
            width: 327px;
            text-align: right;
        }
        .style5
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td bgcolor="#B5B5B5" colspan="2">
                <strong>Configuração de Taxa</strong></td>
        </tr>
        <tr>
            <td class="style4">
                Titulo:</td>
            <td class="style5">
                <asp:TextBox ID="txtTitulo" runat="server" style="text-align: right" 
                    Width="415px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Taxa de Juro:</td>
            <td class="style5">
                <asp:TextBox ID="txtTaxaJuro" runat="server" style="text-align: right" 
                    Width="415px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Atualizar" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

