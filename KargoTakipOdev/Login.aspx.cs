using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace KargoTakipOdev
{
    public partial class Login : System.Web.UI.Page
    {
        string cs = WebConfigurationManager.ConnectionStrings["dbCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(cs);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from Kullanicilar where KullaniciUsername=@KullaniciUsername AND KullaniciPassword=@KullaniciPassword", baglanti);
            komut.Parameters.AddWithValue("@KullaniciUsername",txtUsername.Text.ToString());
            komut.Parameters.AddWithValue("@KullaniciPassword", txtPassword.Text.ToString());
            SqlDataReader oku = komut.ExecuteReader();
            if (oku.Read())
            {
                Session["kullanici"] = oku["KullaniciUsername"].ToString();
                Response.Redirect("~/MusteriInfo.aspx");
            }
            else
            {
                Label2.Text = "kullanici adi veya şifre hatali";
            }
            oku.Close();
            baglanti.Close();
            baglanti.Dispose();
        }

    }
}