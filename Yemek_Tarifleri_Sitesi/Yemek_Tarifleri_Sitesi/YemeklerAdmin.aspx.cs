using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class YemeklerAdmin : System.Web.UI.Page
    {
        private DbSqlConnection connection = new DbSqlConnection();

        private string islem = "";
        private string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack==false)
            {


                id=Request.QueryString["yemek_id"];
                islem = Request.QueryString["islem"];

                //kategori listesi
                NpgsqlCommand command2 = new NpgsqlCommand("Select * From kategoriler", connection.connectionSql());
                NpgsqlDataReader reader2 = command2.ExecuteReader();

                DropDownList1.DataTextField = "kategori_adı";
                DropDownList1.DataValueField = "kategori_id";


                DropDownList1.DataSource = reader2;
                DropDownList1.DataBind();
            }


            NpgsqlCommand cmd = new NpgsqlCommand("Select * From yemekler", connection.connectionSql());
            NpgsqlDataReader reader = cmd.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();


            //silme

            if (islem == "sil")
            {
                NpgsqlCommand deleteCommand = new NpgsqlCommand("Delete From yemekler where yemek_id=@p1",
                    connection.connectionSql());

                deleteCommand.Parameters.AddWithValue("@p1", Int32.Parse(id));
                deleteCommand.ExecuteNonQuery();
                connection.connectionSql().Close();

                //kategori adet güncelleme

                //NpgsqlCommand command3 =
                //    new NpgsqlCommand("Update kategoriler set kategori_adet=kategori_adet-1 where kategori_id = (Select kategori_id From yemekler where yemek_id=@p1)",
                //        connection.connectionSql());
                //command3.Parameters.AddWithValue("@p1", Int32.Parse(id));
                //command3.ExecuteNonQuery();
                //connection.connectionSql().Close();
            }


        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("Images/" + FileUpload1.FileName));
            //yemek ekleme
            NpgsqlCommand command =
                new NpgsqlCommand(
                    "insert into yemekler (yemek_ad,yemek_malzeme,yemek_tarif,kategori_id,yemek_resim) values (@p1,@p2,@p3,@p4,@p5)",
                    connection.connectionSql());
            command.Parameters.AddWithValue("@p1", tbxyemekAdi.Text);
            command.Parameters.AddWithValue("@p2", tbxMalzemeler.Text);
            command.Parameters.AddWithValue("@p3", tbxYemekTarifi.Text);
            command.Parameters.AddWithValue("@p4", Int32.Parse(DropDownList1.SelectedValue));
            command.Parameters.AddWithValue("@p5", "~/Images/" + FileUpload1.FileName);
            command.ExecuteNonQuery();
            connection.connectionSql().Close();

            //NpgsqlCommand command2 = new NpgsqlCommand("CALL increase_category(@p1)",connection.connectionSql());
            //command2.Parameters.AddWithValue("@p1", Int32.Parse(DropDownList1.SelectedValue));
            //command2.ExecuteNonQuery();
            //connection.connectionSql().Close();

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}