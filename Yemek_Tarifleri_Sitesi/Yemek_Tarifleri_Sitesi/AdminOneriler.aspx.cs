using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class AdminOneriler : System.Web.UI.Page
    {
        private DbSqlConnection connection = new DbSqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            NpgsqlCommand cmd = new NpgsqlCommand("Select * from tarifler where tarif_onay=false",connection.connectionSql());
            NpgsqlDataReader reader = cmd.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();

            NpgsqlCommand cmd2 = new NpgsqlCommand("Select * from tarifler where tarif_onay=true", connection.connectionSql());
            NpgsqlDataReader reader2 = cmd2.ExecuteReader();
            DataList2.DataSource = reader2;
            DataList2.DataBind();
        }
    }
}