using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace s_11.Controller
{
    public class Producto
    {
        public Producto(string nombre, int cantidad, double costo, byte[] imagen)
        {
            Nombre = nombre;
            Cantidad = cantidad;
            Costo = costo;
            Imagen = imagen;
        }

        public Producto()
        {

        }

        public string Nombre { get; set; }
        public int Cantidad { get; set; }
        public double Costo { get; set; }
        public byte[] Imagen { get; set; }
    }
}