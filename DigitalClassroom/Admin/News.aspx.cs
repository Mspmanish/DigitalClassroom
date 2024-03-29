using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigitalClassroom.Admin
{
    public partial class News : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }

            con.Open();

            int K = 0;
            SqlCommand cmd = new SqlCommand("select max(id) from news", con);
            object result = cmd.ExecuteScalar();
            if (result != DBNull.Value && result != null)
            {
                K = Convert.ToInt32(result);
                K = K + 1;
                Label4.Text = K.ToString();
            }
            else
            {
                Label4.Text = "1"; // or any default value you want to set
            }

            SqlDataAdapter ad = new SqlDataAdapter("select * from news", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into news (newsdate,subject,description) values(@newsdate,@subject,@description)", con);
            cmd.Parameters.AddWithValue("newsdate", DateTime.Now);
            cmd.Parameters.AddWithValue("subject", TextBox1.Text);
            cmd.Parameters.AddWithValue("description", TextBox2.Text);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('News Edited Successfully')</script>");
            }
            SqlDataAdapter ad = new SqlDataAdapter("select * from news", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }
}