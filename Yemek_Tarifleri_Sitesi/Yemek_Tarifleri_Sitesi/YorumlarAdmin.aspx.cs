using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class YorumlarAdmin : System.Web.UI.Page
    {
        private DbSqlConnection connection = new DbSqlConnection();

        private string id = "";
        private string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                id = Request.QueryString["yorum_id"];
                islem = Request.QueryString["islem"];

            NpgsqlCommand command = new NpgsqlCommand("Select * From yorumlar where yorum_onay=true",connection.connectionSql());
            NpgsqlDataReader reader = command.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
            connection.connectionSql().Close();

            NpgsqlCommand command2 = new NpgsqlCommand("Select * From yorumlar where yorum_onay=false", connection.connectionSql());
            NpgsqlDataReader reader2 = command2.ExecuteReader();
            DataList2.DataSource = reader2;
            DataList2.DataBind();
            connection.connectionSql().Close();

            if (islem == "sil")
            {
                NpgsqlCommand command3 = new NpgsqlCommand("DELETE FROM yorumlar WHERE yorum_id=@p1;", connection.connectionSql());
                command3.Parameters.AddWithValue("@p1", Int32.Parse(id));
                command3.ExecuteNonQuery();
                connection.connectionSql().Close();
                }
            

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}