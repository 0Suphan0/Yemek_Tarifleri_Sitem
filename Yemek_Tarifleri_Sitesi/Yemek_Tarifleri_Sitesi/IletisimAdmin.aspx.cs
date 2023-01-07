using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class IletisimAdmin : System.Web.UI.Page
    {
        private DbSqlConnection connection = new DbSqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            NpgsqlCommand command = new NpgsqlCommand("Select * From mesajlar", connection.connectionSql());
            NpgsqlDataReader reader = command.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
            

        }
    }
}