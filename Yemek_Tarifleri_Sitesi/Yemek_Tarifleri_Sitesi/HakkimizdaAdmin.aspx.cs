using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        private DbSqlConnection connection = new DbSqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack==false)
            {
                NpgsqlCommand cmd = new NpgsqlCommand("Select * from hakkimizda", connection.connectionSql());
                NpgsqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    TextBox1.Text = reader[1].ToString();
                }

                connection.connectionSql().Close();
            }
            
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            NpgsqlCommand command =
                new NpgsqlCommand("Update hakkimizda set hakkimizda_mesaj=@p1", connection.connectionSql());

            command.Parameters.AddWithValue("@p1", TextBox1.Text);
            command.ExecuteNonQuery();
            connection.connectionSql().Close();
        }
    }
}