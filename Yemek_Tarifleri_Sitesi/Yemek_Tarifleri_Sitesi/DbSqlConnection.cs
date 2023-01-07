using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using Npgsql;

namespace Yemek_Tarifleri_Sitesi
{
    public class DbSqlConnection
    {

        public NpgsqlConnection connectionSql()
        {
            NpgsqlConnection connection = new NpgsqlConnection(
                "server=localHost; port=5432; Database=Dbo_yemekTarifi; user ID=postgres; password=123698745Sy");

            connection.Open();

            return connection;
        }


    }
}