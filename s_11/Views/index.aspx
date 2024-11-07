<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="s_11.Views.index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <title>Agregar Producto</title>
</head>
<body>
    <form id="formAgregarProducto" runat="server" enctype="multipart/form-data">
        <div class="container mt-5">
            <h2>Agregar Producto</h2>
            <div class="form-group">
                <label for="txtNombre">Nombre:</label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" Required="true"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtCantidad">Cantidad:</label>
                <asp:TextBox ID="txtCantidad" runat="server" TextMode="Number" CssClass="form-control" Required="true"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtCosto">Costo:</label>
                <asp:TextBox ID="txtCosto" runat="server" TextMode="Number" CssClass="form-control" Required="true"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="fileImagen">Imagen:</label>
                <asp:FileUpload ID="fileImagen" runat="server" CssClass="form-control-file" />
            </div>

            <asp:Button ID="btnAgregarProducto" runat="server" Text="Agregar Producto" CssClass="btn btn-primary" OnClick="btnAgregarProducto_Click" />
        </div>
    </form>
</body>
</html>
