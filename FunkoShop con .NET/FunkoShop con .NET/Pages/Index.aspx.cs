using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace FunkoShop_con.NET
{
    public partial class Index : System.Web.UI.Page
    {   
        public List<Producto> productList { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductoNegocio business = new ProductoNegocio();
            productList = business.ProductList();
            rptRepeater.DataSource = productList;
            rptRepeater.DataBind();

        }
    }
}