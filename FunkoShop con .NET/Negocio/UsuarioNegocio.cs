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
                int request;

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
    

    }
}
