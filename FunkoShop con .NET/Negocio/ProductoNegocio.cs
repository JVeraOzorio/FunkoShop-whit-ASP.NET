using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class ProductoNegocio
    {
        public List<Producto> ProductList()
        {
            List<Producto> ProducList = new List<Producto>();
            AccesoDatos data = new AccesoDatos();
            Producto producto = new Producto();

            try
            {
                data.setStoreProcedure("SP_ProductList");
                data.executeReader();

                while(data.Reader.Read())
                {
                   Producto product = new Producto();
                    product.productCode = (string)data.Reader["codigo_producto"];
                    product.name = (string)data.Reader["nombre"];
                    product.description = (string)data.Reader["descripcion"];
                    product.price = (float)Convert.ToDecimal(data.Reader["precio"]);
                    product.urlImage = (string)data.Reader["urlImagen"];
                    product.urlBoxImage = (string)data.Reader["urlImagenCaja"];
                    product.productTipe = new TipoProducto();
                    product.productTipe.Description = (string)data.Reader["Tipo"];
                    product.productTipe.ID = (int)data.Reader["IdTipoProducto"];
                    product.license = new Licencia();
                    product.license.Description = (string)data.Reader["Licencia"];
                    product.license.ID = (int)data.Reader["IdLicencia"];

                    ProducList.Add(product);
                                        
                }
                data.CloseConnection();
                return ProducList;
            }
            catch (Exception ex)
            {

                throw;
            }
            

        }
        

    }
}
