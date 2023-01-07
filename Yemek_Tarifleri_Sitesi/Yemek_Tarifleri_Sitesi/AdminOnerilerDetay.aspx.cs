using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class AdminOnerilerDetay : System.Web.UI.Page
    {
        private DbSqlConnection connection = new DbSqlConnection();

        private string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            id = Request.QueryString["tarif_id"];

            if (Page.IsPostBack==false)
            {
                NpgsqlCommand command =
                    new NpgsqlCommand("select * from tarifler where tarif_id=@p1", connection.connectionSql());
                command.Parameters.AddWithValue("@p1", Int32.Parse(id));
                NpgsqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {

                    tbxTarifAdi.Text = reader[1].ToString();
                    tbxMalzemeler.Text = reader[2].ToString();
                    tbxYapilisi.Text = reader[3].ToString();
                    tbxTarifOnerenAd.Text = reader[5].ToString();
                    tbxTarifOnerenMail.Text = reader[6].ToString();


                }


                

                //kategori

                //kategori listesi
                NpgsqlCommand command2 = new NpgsqlCommand("Select * From kategoriler", connection.connectionSql());
                NpgsqlDataReader reader2 = command2.ExecuteReader();

                DropDownList1.DataTextField = "kategori_adı";
                DropDownList1.DataValueField = "kategori_id";


                DropDownList1.DataSource = reader2;
                DropDownList1.DataBind();
                connection.connectionSql().Close();

            }
                
              

            








        }

        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            //güncelleme
            NpgsqlCommand command = new NpgsqlCommand("update tarifler set tarif_onay=true where tarif_id=@p1",
                connection.connectionSql());
            command.Parameters.AddWithValue("@p1", Int32.Parse(id));
            command.ExecuteNonQuery();
            connection.connectionSql().Close();

            //ana sayfaya ekleme

            NpgsqlCommand command2 =
                new NpgsqlCommand(
                    "insert into yemekler (yemek_ad,yemek_malzeme,yemek_tarif,kategori_id) values (@p1,@p2,@p3,@p4)",
                    connection.connectionSql());
            command2.Parameters.AddWithValue("@p1", tbxTarifAdi.Text);
            command2.Parameters.AddWithValue("@p2", tbxMalzemeler.Text);
            command2.Parameters.AddWithValue("@p3", tbxYapilisi.Text);
            command2.Parameters.AddWithValue("@p4", Int32.Parse(DropDownList1.SelectedValue));
            command2.ExecuteNonQuery();
            connection.connectionSql().Close();

            //kategori adet güncelleme

            //NpgsqlCommand command3 =
            //    new NpgsqlCommand("Update kategoriler Set kategori_adet=kategori_adet+1 where kategori_id=@p1",
            //        connection.connectionSql());
            //command3.Parameters.AddWithValue("@p1", Int32.Parse(DropDownList1.SelectedValue));
            //command3.ExecuteNonQuery();
            //connection.connectionSql().Close();



        }
    }
}