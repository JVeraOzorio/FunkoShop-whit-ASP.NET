using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class UsuarioNegocio
    {
        

        public void validarDatos (Usuario user)
        {
            if (user.Nombre == "")
            {
                throw new Exception("El nombre no puede estar vacio");
            }
            if (user.Apellido == "")
            {
                throw new Exception("El apellido no puede estar vacio");
            }
            if (user.Email == "")
            {
                throw new Exception("El email no puede estar vacio");
            }
            if (user.Password == "")
            {
                throw new Exception("La contraseña no puede estar vacia");
            }
            
        }

        public bool login(string email, string password)
        {   

            AccesoDatos data = new AccesoDatos();

            try
            {
                data.setStoreProcedure("SP_ValidarUsuario");
                data.setParameter("@Email", email);
                data.setParameter("@Contrasenia", password);
                data.setParameter("@Patron", "FunkoShop");
                data.executeReader();
                return data.Reader.Read();

            }
            catch (Exception)
            {

                throw ;
            }
            finally
            {
                data.CloseConnection();
            }

            
        }

        public Usuario getUser(String email)
        {
            AccesoDatos data = new AccesoDatos();
            Usuario user = new Usuario();
            if (email == null)
            {
                return null;
            }


            data.setQuery("select nombre, email, es_admin from Usuario where email = @Email");
            data.setParameter("@Email", email);
            data.executeReader();
            while (data.Reader.Read())
            {
                user.Nombre = (string)data.Reader["nombre"];
                user.Email = (string)data.Reader["email"];
                user.EsAdmin = (bool)data.Reader["es_admin"];
            }
            data.CloseConnection();
            return user;
        }

        public void AddUser(Usuario user)
        {
                AccesoDatos data = new AccesoDatos();


            try
            {
                data.setStoreProcedure("SP_AgregarUsuario");
                data.setParameter("@Nombre", user.Nombre);
                data.setParameter("@Apellido", user.Apellido);
                data.setParameter("@Email", user.Email);
                data.setParameter("@Contrasenia", user.Password);
                data.setParameter("@Patron", "FunkoShop");
                data.setParameter("@EsAdmin", user.EsAdmin);
                data.executeWriter();
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
    }
}
