using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class YemekAdminDetay : System.Web.UI.Page
    {
        private string id = "";
        private DbSqlConnection connection = new DbSqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                //kategori listesi
                NpgsqlCommand command2 = new NpgsqlCommand("Select * From kategoriler", connection.connectionSql());
                NpgsqlDataReader reader2 = command2.ExecuteReader();

                DropDownList1.DataTextField = "kategori_adı";
                DropDownList1.DataValueField = "kategori_id";


                DropDownList1.DataSource = reader2;
                DropDownList1.DataBind();
            }


            id = Request.QueryString["yemek_id"];

            if (Page.IsPostBack == false)
            {

                NpgsqlCommand command = new NpgsqlCommand("Select * From yemekler where yemek_id=@p1", connection.connectionSql());
                command.Parameters.AddWithValue("@p1", Int32.Parse(id));
                NpgsqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    tbxYemekAdi.Text = reader[1].ToString();
                    tbxMalzemeler.Text = reader[2].ToString();
                    tbxTarif.Text = reader[3].ToString();
                }

                connection.connectionSql().Close();

            }
        }
        
        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("Images/"+FileUpload1.FileName));
            NpgsqlCommand command =
                new NpgsqlCommand(
                    "update yemekler set yemek_ad=@p1,yemek_malzeme=@p2,yemek_tarif=@p3,kategori_id=@p4,yemek_resim=@p5 where yemek_id=@p6",
                    connection.connectionSql());

            command.Parameters.AddWithValue("@p1", tbxYemekAdi.Text);
            command.Parameters.AddWithValue("@p2", tbxMalzemeler.Text);
            command.Parameters.AddWithValue("@p3", tbxTarif.Text);
            command.Parameters.AddWithValue("@p4", Int32.Parse(DropDownList1.SelectedValue) );
            command.Parameters.AddWithValue("@p5","~/Images/"+FileUpload1.FileName);
            command.Parameters.AddWithValue("@p6", Int32.Parse(id));
            command.ExecuteNonQuery();
            connection.connectionSql().Close();

        }

        protected void btnGununYemegi_Click(object sender, EventArgs e)
        {
            //hepsini false yap
            NpgsqlCommand command =
                new NpgsqlCommand("update yemekler set gunun_yemegi=false", connection.connectionSql());

            command.ExecuteNonQuery();
            connection.connectionSql().Close();

            //gunun yemegi icin id'ye gore drurmu true

            NpgsqlCommand command2 = new NpgsqlCommand("update yemekler set gunun_yemegi=true where yemek_id=@p1",
                connection.connectionSql());

            command2.Parameters.AddWithValue("@p1", Int32.Parse(id));
            command2.ExecuteNonQuery();
            connection.connectionSql().Close();
            

        }   
            
    }
}