using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigitalClassroom.Student
{
    public partial class stud_lecture : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);
        string str = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string sub = "";
            str = Session["userid"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("select subject from student where userid=@userid", con);
            cmd.Parameters.AddWithValue("@userid", str);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                sub = dr[0].ToString();
            }
            dr.Close();
            if (sub != "")
            {
                SqlDataAdapter ad = new SqlDataAdapter("select * from lecture where subject ='" + sub + "' ", con);
                DataSet ds = new DataSet();
                ad.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();

            }
            con.Close();
        }
    }
}