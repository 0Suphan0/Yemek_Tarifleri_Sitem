using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class GununYemegiAdmin : System.Web.UI.Page
    {
        DbSqlConnection connection = new DbSqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            NpgsqlCommand command = new NpgsqlCommand("select * from yemekler",connection.connectionSql());
            NpgsqlDataReader reader = command.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();

        }
    }
}