using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigitalClassroom.Student
{
    public partial class StudentHome : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
        //    string str = Session["userid"].ToString();
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select *from student where userid=@userid", con);
        //    cmd.Parameters.Add("@userid", str);
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    while (dr.Read())
        //    {
        //        Label14.Text = dr[11].ToString();
        //        Label15.Text = dr[12].ToString();
        //        Label16.Text = dr[3].ToString();
        //        Label17.Text = Convert.ToDateTime(dr[4]).ToLongDateString();
        //        Label18.Text = dr[6].ToString();
        //        Label19.Text = dr[5].ToString();
        //        Label20.Text = dr[7].ToString();
        //        Label21.Text = dr[8].ToString();
        //        Label22.Text = dr[9].ToString();
        //        Label23.Text = dr[10].ToString();
        //        Image4.ImageUrl = "../" + dr[13].ToString();
        //    }
        }
    

        protected void button_Click(object sender, EventArgs e)
        {
            //Response.Redirect("EditProfile.aspx");
        }
    
    }
}