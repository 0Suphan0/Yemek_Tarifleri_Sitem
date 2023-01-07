using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class AdminMesajDetay : System.Web.UI.Page
    {
        private DbSqlConnection connection = new DbSqlConnection();
        private string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id= Request.QueryString["mesaj_id"];
            NpgsqlCommand command = new NpgsqlCommand("select * from mesajlar where mesaj_id=@p1",connection.connectionSql());
            command.Parameters.AddWithValue("@p1", Int32.Parse(id));
            NpgsqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                tbxMesajGonderen.Text = dr[1].ToString();
                tbxBaslik.Text = dr[2].ToString();
                tbxMail.Text = dr[3].ToString();
                tbxMesajIcerik.Text = dr[4].ToString();
            }
            connection.connectionSql().Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            NpgsqlCommand command = new NpgsqlCommand("DELETE FROM mesajlar WHERE mesaj_id=@p1", connection.connectionSql());
            command.Parameters.AddWithValue("@p1", Int32.Parse(id));
            command.ExecuteNonQuery();
            connection.connectionSql().Close();
        }
    }
}