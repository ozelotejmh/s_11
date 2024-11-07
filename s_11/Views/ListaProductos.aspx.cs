using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using s_11.Models.productosTableAdapters;
using s_11.Controller;

namespace s_11.Views
{
    public partial class ListaProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_mosytrar_Click(object sender, EventArgs e)
        {
            List<Producto> productos = new List<Producto>();
            using (productosTableAdapter n = new productosTableAdapter())
            {
                var datos = n.GetData();
                foreach (var row in datos)
                {
                    Producto producto = new Producto();
                    producto.Nombre = row["Nombre"].ToString();
                    producto.Cantidad = Convert.ToInt32(row["Cantidad"]);
                    producto.Costo = Convert.ToDouble(row["Costo"]);
                    producto.Imagen = row["Imagen"] as byte[];
                    productos.Add(producto);
                }
            }
            GridViewProductos.DataSource = productos;
            GridViewProductos.DataBind();
        }

    }
}