using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        private string id = "";
        private DbSqlConnection connection = new DbSqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               id= Request.QueryString["kategori_id"];
                NpgsqlCommand command = new NpgsqlCommand("Select * From yemekler where kategori_id=@p1",
                    connection.connectionSql());
                command.Parameters.AddWithValue("@p1", Int32.Parse(id));
                NpgsqlDataReader reader = command.ExecuteReader();
                DataList2.DataSource = reader;
                DataList2.DataBind();
                
            }
        }
    }
}