using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigitalClassroom
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);
        string qus = "", ans = "", user = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            user = Session["user1"].ToString();
            SqlCommand cmd = new SqlCommand("select securityquestion,securityanswers from student where userid=@userid", con);
            cmd.Parameters.AddWithValue("@userid", user);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                qus = dr[0].ToString();
                ans = dr[1].ToString();

            }
            Label6.Text = user;
            Label7.Text = qus;
            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                if (ans == TextBox1.Text)
                {
                    Panel1.Visible = true;
                    TextBox1.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('Your security answers is incorrect')</script>");
                    TextBox1.Text = "";
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update student set password=@password where userid=@userid", con);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            cmd.Parameters.AddWithValue("@userid", user);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('Password Updated Successfully');window.location='Login.aspx';", true);
            }
            else
            {
                Response.Write("<script>alert('there is some error while updating')</script>");
                TextBox2.Text = "";
                TextBox3.Text = "";
            }
            con.Close();
        }
    }
}