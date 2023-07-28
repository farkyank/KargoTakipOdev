using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace KargoTakipOdev
{
    public partial class MusteriInfo : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt; 

        public void DataLoad()
        {
            if (Page.IsPostBack)
            {
                dgViewMusteriler.DataBind();
            }

        }
        public void ClearAllData()
        {
            txtAd.Text = "";
            txtSoyad.Text = "";
            txtAdres.Text = "";
            txtTelefon.Text = "";
            txtKargoNo.Text = "";
            lblMessage.Text = "";

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            lblMusteriId.Text = dgViewMusteriler.SelectedRow.Cells[1].Text;
            txtAd.Text = dgViewMusteriler.SelectedRow.Cells[2].Text;
            txtSoyad.Text = dgViewMusteriler.SelectedRow.Cells[3].Text;
            txtAdres.Text = dgViewMusteriler.SelectedRow.Cells[4].Text;
            txtTelefon.Text = dgViewMusteriler.SelectedRow.Cells[5].Text;
            txtKargoNo.Text = dgViewMusteriler.SelectedRow.Cells[6].Text;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtAd.Text != "" && txtSoyad.Text != "" && txtKargoNo.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert Into Musteriler (MusteriAd, MusteriSoyAd, MusteriAdres, MusteriTelefon, MusteriKargoNo) Values(@MusteriAd, @MusteriSoyAd, @MusteriAdres, @MusteriTelefon, @MusteriKargoNo)", con);

                    cmd.Parameters.AddWithValue("@MusteriAd", txtAd.Text);
                    cmd.Parameters.AddWithValue("@MusteriSoyAd", txtSoyad.Text);
                    cmd.Parameters.AddWithValue("@MusteriAdres", txtAdres.Text);
                    cmd.Parameters.AddWithValue("@MusteriTelefon", txtTelefon.Text);
                    cmd.Parameters.AddWithValue("@MusteriKargoNo", txtKargoNo.Text);
                    cmd.ExecuteNonQuery(); 
                    con.Close();
                    DataLoad();
                    ClearAllData();
                }
            }
            else
            {
                lblMessage.Text = "LÜTFEN GEREKLİ ALANLARI DOLDURUNUZ!";
            }
        }


        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (txtAd.Text != "" && txtSoyad.Text != "" && txtKargoNo.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Update Musteriler Set MusteriAd=@MusteriAd, MusteriSoyAd=@MusteriSoyAd, MusteriAdres=@MusteriAdres, MusteriTelefon=@MusteriTelefon, MusteriKargoNo=@MusteriKargoNo Where MusteriId=@MusteriId", con);

                    cmd.Parameters.AddWithValue("@MusteriAd", txtAd.Text);
                    cmd.Parameters.AddWithValue("@MusteriSoyAd", txtSoyad.Text);
                    cmd.Parameters.AddWithValue("@MusteriAdres", txtAdres.Text);
                    cmd.Parameters.AddWithValue("@MusteriTelefon", txtTelefon.Text);
                    cmd.Parameters.AddWithValue("@MusteriKargoNo", txtKargoNo.Text);
                    cmd.Parameters.AddWithValue("@MusteriId", lblMusteriId.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearAllData();
                }
            }
            else
            {
                lblMessage.Text = "LÜTFEN GEREKLİ ALANLARI DOLDURUNUZ!";
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("Delete From Musteriler where MusteriId=@MusteriId", con);
                cmd.Parameters.AddWithValue("@MusteriId", lblMusteriId.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                DataLoad();
                ClearAllData();
            }
        }

        protected void btnCancel_Click1(object sender, EventArgs e)
        {
            ClearAllData();
        }


    }
}