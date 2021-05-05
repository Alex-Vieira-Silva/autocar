<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ViewPage.aspx.cs" Inherits="ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 644px;
        }
        .style3
        {
            text-align: left;
            padding: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table class="style1">
        <tr>
            <td bgcolor="#FF6600" class="style3">
                <asp:Label ID="lblTitulo" runat="server" 
                    style="text-align: right; font-size: large; color: #FFFFFF; font-weight: 700;" 
                    Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" valign=top>
                <asp:Label ID="lblConteudo" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>


