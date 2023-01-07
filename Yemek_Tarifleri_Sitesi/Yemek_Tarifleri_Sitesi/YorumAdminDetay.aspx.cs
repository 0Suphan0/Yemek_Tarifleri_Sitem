using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;
using NpgsqlTypes;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class YorumAdminDetay : System.Web.UI.Page
    {
        private DbSqlConnection connection = new DbSqlConnection();
        private string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["yorum_id"];

                //inner join ile yorumlar ve yemekler tablosunu birleştirme...
                NpgsqlCommand command =
                    new NpgsqlCommand("select yorum_ad_soyad,yorum_mail,yorum_icerik,yemek_ad from yorumlar inner join yemekler on yorumlar.yorum_yemek_id=yemekler.yemek_id where yorum_id=@p1", connection.connectionSql());
                command.Parameters.AddWithValue("@p1", Int32.Parse(id));
                NpgsqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    tbxAdSoyad.Text = reader[0].ToString();
                    tbxMailAdresi.Text = reader[1].ToString();
                    tbxIcerik.Text = reader[2].ToString();
                    tbxYemek.Text = reader[3].ToString();
                }
                connection.connectionSql().Close();

            }
           
                
        }

        protected void btnOnay_Click(object sender, EventArgs e)
        {
            id = Request.QueryString["yorum_id"];
            NpgsqlCommand command =
                new NpgsqlCommand("Update yorumlar Set yorum_icerik=@p1, yorum_onay=@p2 Where yorum_id=@p3", connection.connectionSql());
            command.Parameters.AddWithValue("@p1", tbxIcerik.Text);
            command.Parameters.AddWithValue("@p2", true);
            command.Parameters.AddWithValue("@p3", Int32.Parse(id));
            command.ExecuteNonQuery();
            connection.connectionSql().Close();



        }
    }
}
