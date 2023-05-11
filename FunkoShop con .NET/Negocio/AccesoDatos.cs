using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class AccesoDatos
    {
        private SqlConnection connection;
        private SqlCommand command;
        private SqlDataReader reader;

        public SqlDataReader Reader { get { return reader; } }

        public AccesoDatos()
        {
            connection = new SqlConnection("server=.\\SQLEXPRESS; database=TiendaFunko; integrated security=true");
            command = new SqlCommand();
        }

        public void setQuery(string query)
        {
            command.CommandType = System.Data.CommandType.Text;
            command.CommandText = query;
        }

        public void setStoreProcedure(string procedure)
        {
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText=procedure;
        }

        public void setParameter(string name, object value)
        {
            command.Parameters.AddWithValue(name, value);
        }

        public void executeReader()
        {
            command.Connection = connection;

            try
            {
                connection.Open();
                reader= command.ExecuteReader();

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void CloseConnection()
        {
            if(reader != null)
            {
                reader.Close();
            }
            connection.Close();
        }




    }
}
