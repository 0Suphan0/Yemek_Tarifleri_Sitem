using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        DbSqlConnection connection= new DbSqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            NpgsqlCommand cmd = new NpgsqlCommand("Select * From yemekler where gunun_yemegi=true", connection.connectionSql());
            NpgsqlDataReader reader = cmd.ExecuteReader();
            DataList2.DataSource = reader;
            DataList2.DataBind();
        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}