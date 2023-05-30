using Dominio;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FunkoShop_con.NET.Pages
{
    public partial class DetalleProducto : System.Web.UI.Page
    {   
        List<Producto> productList = new List<Producto>();
        protected void Page_Load(object sender, EventArgs e)
        {
             
                Producto product = new Producto();
                ProductoNegocio negocio = new ProductoNegocio();
                // Obtener el ID del producto desde la URL
                string productId = Request.QueryString["id"];
                
            // Obtener el producto desde la base de datos
                  product = negocio.getProduct(productId);
                  lblDescription.Text = product.description;
                  lblLicense.Text = product.license.Description;
                  lblPrecio.Text = product.price.ToString();
                  imgProducto.ImageUrl = product.urlImage;
            //// Realizar las acciones necesarias con el ID del producto, como cargar los detalles del producto específico

            ProductoNegocio business = new ProductoNegocio();
            productList = business.ProductList();
            List<Producto> listOfThree = productList.Take(3).ToList();
            rptSlider.DataSource = productList;
            rptSlider.DataBind();
        }
    }
}