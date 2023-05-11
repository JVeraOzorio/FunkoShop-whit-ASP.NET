using Dominio;
using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FunkoShop_con.NET
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
          
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            UsuarioNegocio negocio = new UsuarioNegocio();
            AccesoDatos data = new AccesoDatos();
            string email = txtEmail.Text;
            string password = txtPassword.Text;


           bool read = negocio.login(email, password);

           if (read)
            {
                Session["loggedUser"] = negocio.getUser(email).Nombre;
                Response.Redirect("Index.aspx");
            }else
            {
                lblError.Text = "Usuario o contraseña incorrectos";
            }
           
            
            

            data.CloseConnection();
        }
    }
}