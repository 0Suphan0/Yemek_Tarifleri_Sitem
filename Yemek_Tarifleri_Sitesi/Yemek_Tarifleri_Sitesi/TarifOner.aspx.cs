using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class TarifOner : System.Web.UI.Page
    {

        private DbSqlConnection connection = new DbSqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTarifOner_Click(object sender, EventArgs e)
        {
            NpgsqlCommand cmd = new NpgsqlCommand("select * from tarif_insert(@t1,@t2,@t3,@t4,@t5,@t6)", connection.connectionSql());
            cmd.Parameters.AddWithValue("@t1", tbxTarifad.Text);
            cmd.Parameters.AddWithValue("@t2", tbxMalzemeler.Text);
            cmd.Parameters.AddWithValue("@t3", tbxYapilisi.Text);
            cmd.Parameters.AddWithValue("@t4", FileUpload1.FileName);
            cmd.Parameters.AddWithValue("@t5", tbxOneren.Text);
            cmd.Parameters.AddWithValue("@t6", tbxMailAddress.Text);

            cmd.ExecuteNonQuery();
            connection.connectionSql().Close();
            Response.Write("TArif Alındı");

            
        }
    }
}