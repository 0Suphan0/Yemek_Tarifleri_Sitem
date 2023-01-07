using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class Iletisim : System.Web.UI.Page
    {

        DbSqlConnection conn = new DbSqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            NpgsqlCommand cmd = new NpgsqlCommand("insert into mesajlar (mesaj_gonderen,mesaj_baslik,mesaj_mail,mesaj_icerik) values (@p1,@p2,@p3,@p4)", conn.connectionSql());
            cmd.Parameters.AddWithValue("@p1", tbxAdSoyad.Text);
            cmd.Parameters.AddWithValue("@p2", tbxKonu.Text);
            cmd.Parameters.AddWithValue("@p3", tbxMall.Text);
            cmd.Parameters.AddWithValue("@p4", tbxMessage.Text);
            cmd.ExecuteNonQuery();
            conn.connectionSql().Close();

            Response.Write("<script> alert('Mesajınız Alınmışır.') </script>");
        }
    }
}