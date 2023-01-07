using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        private DbSqlConnection connection = new DbSqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            NpgsqlCommand command =
                new NpgsqlCommand("Select hakkimizda_mesaj From hakkimizda", connection.connectionSql());

            NpgsqlDataReader reader = command.ExecuteReader();

            DataList2.DataSource = reader;

            DataList2.DataBind();
            



        }
    }
}