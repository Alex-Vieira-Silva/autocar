<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="ExcluirCarro.aspx.cs" Inherits="admin_ExcluirCarro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p class="style2">
        &nbsp;</p>
    <p class="style2">
        Deseja realmente excluir o carro com o código:
        <asp:Label ID="lblCodigo" runat="server" style="font-weight: 700"></asp:Label>
&nbsp;?
    </p>
    <p class="style2">
        <asp:Button ID="btnExcluir" runat="server" Height="41px" Text="SIM" 
            Width="67px" onclick="btnExcluir_Click" />
    </p>
</asp:Content>


