using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class KategorilerAdmin : System.Web.UI.Page
    {
        private DbSqlConnection connection = new DbSqlConnection();
        private string id = "";
        private string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["kategori_id"];
                islem = Request.QueryString["islem"];
            }

            NpgsqlCommand cmd = new NpgsqlCommand("Select * From kategoriler",connection.connectionSql());
            NpgsqlDataReader reader = cmd.ExecuteReader();
            DataList1.DataSource=reader;
            DataList1.DataBind();
            Panel1.Visible = false;
           
            //silme

            if (islem == "sil")
            {
                NpgsqlCommand deleteCommand = new NpgsqlCommand("Delete From kategoriler where kategori_id=@p1",
                    connection.connectionSql());

                deleteCommand.Parameters.AddWithValue("@p1", Int32.Parse(id));
                deleteCommand.ExecuteNonQuery();
                connection.connectionSql().Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           Panel1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            NpgsqlCommand command = new NpgsqlCommand("insert into kategoriler (kategori_adı) values (@p1)",
                connection.connectionSql());

            command.Parameters.AddWithValue("@p1", tbxkategoriName.Text);
            command.ExecuteNonQuery();

            connection.connectionSql().Close();
        }
    }
}