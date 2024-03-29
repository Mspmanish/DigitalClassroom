using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigitalClassroom.Faculty
{
    public partial class fact_course : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
            con.Open();

            //int K = 1;
            SqlCommand cmd = new SqlCommand("select courseid from course", con);
            SqlDataReader dr = cmd.ExecuteReader();
            //while (dr.Read())
            //{
            //    K = Convert.ToInt32(dr[0]);
            //}
            //K = K + 1;
            //Label9.Text = K.ToString();
            dr.Close();
            SqlDataAdapter ad = new SqlDataAdapter("select * from course", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            //GridView2.DataSource = ds;
            GridView1.DataBind();
            //GridView2.DataBind();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into course (courseid,description,duration) values(@courseid,@description,@duration)", con);
            cmd.Parameters.Add("courseid", TextBox1.Text);
            cmd.Parameters.Add("description", TextBox4.Text);
            cmd.Parameters.Add("duration", TextBox5.Text);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('Course Edited Successfully')</script>");
            }
            SqlDataAdapter ad = new SqlDataAdapter("select * from course", con);
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
    }
}