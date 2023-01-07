using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Npgsql;

namespace Yemek_Tarifleri_Sitesi
{

    public partial class Kullanici : System.Web.UI.MasterPage
    {
        private DbSqlConnection connection = new DbSqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            NpgsqlCommand cmd = new NpgsqlCommand("Select * From kategoriler" ,connection.connectionSql());
            NpgsqlDataReader reader =  cmd.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}