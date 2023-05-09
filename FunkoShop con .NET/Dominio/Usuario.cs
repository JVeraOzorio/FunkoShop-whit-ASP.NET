using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Usuario
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Email { get; set; }
        public string Salt { get; set; }
        public string HashedPassword { get; set; }
        public bool EsAdmin { get; set; }

        public Usuario()
        {
        }
        public Usuario(string nombre, string email, string password)
        {
            Nombre = nombre;
            Email = email;
            EsAdmin = false;
            Salt = GenerarSalt();
            HashedPassword = GenerarHash(password);
        }

        private string GenerarSalt()
        {
            byte[] salt = new byte[16];
            using (var rng = RandomNumberGenerator.Create())
            {
                rng.GetBytes(salt);
            }
            return Convert.ToBase64String(salt);
        }

        private string GenerarHash(string password)
        {
            byte[] passwordBytes = Encoding.UTF8.GetBytes(password);
            byte[] saltBytes = Convert.FromBase64String(Salt);

            byte[] hashBytes = new byte[passwordBytes.Length + saltBytes.Length];
            Buffer.BlockCopy(passwordBytes, 0, hashBytes, 0, passwordBytes.Length);
            Buffer.BlockCopy(saltBytes, 0, hashBytes, passwordBytes.Length, saltBytes.Length);

            using (var sha256 = SHA256.Create())
            {
                byte[] hashedBytes = sha256.ComputeHash(hashBytes);
                return Convert.ToBase64String(hashedBytes);
            }
        }

        public bool ValidarPassword(string password)
        {
            string hashedPassword = GenerarHash(password);
            return HashedPassword == hashedPassword;
        }





    }
}
