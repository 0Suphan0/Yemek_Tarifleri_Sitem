using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace Yemek_Tarifleri_Sitesi.Pages.AdminPages
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        private string id = "";
        private DbSqlConnection connection = new DbSqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["kategori_id"];

            if (Page.IsPostBack == false)
            {

                NpgsqlCommand command = new NpgsqlCommand("Select * From kategoriler where kategori_id=@p1", connection.connectionSql());
                command.Parameters.AddWithValue("@p1", Int32.Parse(id));
                NpgsqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    TextBox1.Text = reader[1].ToString();
                    TextBox2.Text = reader[2].ToString();
                }

                connection.connectionSql().Close();

            }

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            NpgsqlCommand command =
                new NpgsqlCommand("update kategoriler set kategori_adı=@p1,kategori_adet=@p2 where kategori_id=@p3",
                    connection.connectionSql());

            command.Parameters.AddWithValue("@p1", TextBox1.Text);
            command.Parameters.AddWithValue("@p2", Int32.Parse(TextBox2.Text));
            command.Parameters.AddWithValue("@p3", Int32.Parse(id));
            command.ExecuteNonQuery();
            connection.connectionSql().Close();
        }
    }
}