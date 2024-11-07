<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaProductos.aspx.cs" Inherits="s_11.Views.ListaProductos" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <title>Lista de Productos</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2>Lista de Productos</h2>

            <asp:GridView ID="GridViewProductos" runat="server" CssClass="table table-striped" AutoGenerateColumns="false">
    <Columns>
        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
        <asp:BoundField DataField="Costo" HeaderText="Costo" />
        <asp:TemplateField HeaderText="Imagen">
            <ItemTemplate>
                <asp:Image ID="imgProducto" runat="server" Width="100" Height="100"
                           ImageUrl='<%# "data:image/png;base64," + Convert.ToBase64String((byte[])Eval("Imagen")) %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>


            <asp:Button Text="Mostrar" runat="server" ID="btn_mosytrar" OnClick="btn_mosytrar_Click"/>
        </div>
    </form>
</body>
</html>
