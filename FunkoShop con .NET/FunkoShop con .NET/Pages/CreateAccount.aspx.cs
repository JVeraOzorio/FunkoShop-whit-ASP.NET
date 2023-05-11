using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;
using HelpersLibrary;

namespace FunkoShop_con.NET
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {   
               Usuario user = new Usuario();
               UsuarioNegocio business = new UsuarioNegocio();
               user.Nombre = txtName.Text;
               user.Apellido = txtLastName.Text;
               user.Email = txtEmail.Text;
               user.Password = txtPassword.Text;
               string passwordCopy = txtPasswordCopy.Text;
               user.EsAdmin = false;

            try
            {
                business.validarDatos(user);
                if (StringHelper.Equals(passwordCopy, user.Password)){

                    if(business.login(user.Email, user.Password) == false)
                    {
                         business.AddUser(user);
                         Response.Redirect("Login.aspx");
                    }
                    else
                    {
                        lblError.Text = "El usuario ya existe";
                    }
                }
                else
                {
                    lblError.Text = "Las contraseñas no coinciden";
                } 
               
            }
            catch (Exception)
            {

                lblError.Text = "No puede quedar ningun campo vacio";
            } 


           
           

        }
    }
}