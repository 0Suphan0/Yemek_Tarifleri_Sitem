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
    public partial class YemekDetay : System.Web.UI.Page
    {
        private DbSqlConnection conn = new DbSqlConnection();
        private string yemekId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekId = Request.QueryString["yemekId"];
            NpgsqlCommand cmd = new NpgsqlCommand("select yemek_ad from yemekler where yemek_id::text=@p1", conn.connectionSql());
            cmd.Parameters.AddWithValue("@p1", yemekId);
            NpgsqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                Label3.Text = reader[0].ToString();
            }
           // conn.connectionSql().Close();


            //yorumları getirme

            NpgsqlCommand cmd2 = new NpgsqlCommand("select * from yorumlar where yorum_yemek_id::text=@p2 and yorum_onay=true ", conn.connectionSql());
            cmd2.Parameters.AddWithValue("@p2", yemekId);
            NpgsqlDataReader reader2 = cmd2.ExecuteReader();
            DataList2.DataSource = reader2;
            DataList2.DataBind();

            conn.connectionSql().Close();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            NpgsqlCommand cmd = new NpgsqlCommand("select * from yorum_insert(@t1,@t2,@t3,@t4)", conn.connectionSql());
            cmd.Parameters.AddWithValue("@t1", tbxAdSoyad.Text);
            cmd.Parameters.AddWithValue("@t2", tbxMail.Text);
            cmd.Parameters.AddWithValue("@t3", tbxYorum.Text);
            cmd.Parameters.AddWithValue("@t4", Int32.Parse(yemekId));
            

            cmd.ExecuteNonQuery();
            conn.connectionSql().Close();
            Response.Write("yorum Alındı");

        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}