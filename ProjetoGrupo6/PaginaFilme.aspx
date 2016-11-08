<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaFilme.aspx.cs" Inherits="ProjetoGrupo6.PaginaFilme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #TextArea1 {
            height: 79px;
            width: 268px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="nomedofilme" runat="server" Text="Nome Do Filme"></asp:Label>
        <br />

    </div>
        <br />
        <asp:TextBox ID="TextBoxComentario" runat="server" Height="63px" Width="275px" OnTextChanged="TextBoxComentario_TextChanged"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
