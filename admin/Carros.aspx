<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Carros.aspx.cs" Inherits="admin_Carros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <asp:GridView ID="grdDados" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" Height="261px" Width="949px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Código" />
            <asp:BoundField DataField="modelo" HeaderText="Modelo" />
            <asp:TemplateField HeaderText="Marca">
                <ItemTemplate>
                    <asp:Image ID="imgMarca" runat="server" Height="82px" 
                        ImageUrl='<%# Eval("marca", "../marcas/{0}.jpg") %>' Width="128px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ano" HeaderText="Ano" />
            <asp:BoundField DataField="preco" DataFormatString="{0:c}" HeaderText="Preço" />
            <asp:HyperLinkField DataNavigateUrlFields="id" 
                DataNavigateUrlFormatString="ExcluirCarro.aspx?id={0}" HeaderText="Apagar" 
                Text="X" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
</asp:Content>


