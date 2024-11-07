using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using s_11.Models.productosTableAdapters;

namespace s_11.Views
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregarProducto_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            int cantidad = int.Parse(txtCantidad.Text);
            decimal costo = decimal.Parse(txtCosto.Text);
            byte[] imagen = null;

            if (fileImagen.HasFile)
            {
                using (BinaryReader br = new BinaryReader(fileImagen.PostedFile.InputStream))
                {
                    imagen = br.ReadBytes(fileImagen.PostedFile.ContentLength);
                }
            }


            productosTableAdapter ProductosAdapter = new productosTableAdapter(); 
            ProductosAdapter.AgregarProducto(nombre, cantidad, costo, imagen);

            Response.Redirect("ListaProductos.aspx");
        }
    }
}