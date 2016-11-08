<%@ Page Language="C#" MasterPageFile="~/Cine7Normal.Master" AutoEventWireup="true" CodeBehind="ResultadoPesquisa.aspx.cs" Inherits="ProjetoGrupo6.UsuarioNormal.ResultadoPesquisa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True" Width="200px" OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#A30F1D" GridLines="None" BackColor="White" BorderStyle="None" Height="171px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="filme_name" HeaderText="Nome do Filme" SortExpression="filme_name" />
                <asp:ButtonField CommandName="Acessar" Text="Acessar" />
            </Columns>
            <FooterStyle BackColor="#ffffff" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A30F1D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#ffffff" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#ffffff" />
            <SortedAscendingHeaderStyle BackColor="#ffffff" />
            <SortedDescendingCellStyle BackColor="#ffffff" />
            <SortedDescendingHeaderStyle BackColor="#ffffff" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:2016TiiGrupo6ConnectionString %>" SelectCommand="select filme_name from Filme
where filme_name like '%' + @filme_name + '%'">
            <SelectParameters>
                <asp:SessionParameter Name="filme_name" SessionField="filme_name" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/UsuarioNormal/Home.aspx">Voltar</asp:HyperLink>
</asp:Content>
