using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Producto
    {
      public  string productCode { get; set; }
      public  string name   { get; set; } 
      public  string description { get; set; }
      public  TipoProducto productTipe { get; set; }
      public  float price { get; set; }
      public  bool available { get; set; }
      public  Licencia license { get; set; }
      public  int stock { get; set; }
      public  string urlImage { get; set; }
      public  string urlBoxImage { get; set; }

    }
}
