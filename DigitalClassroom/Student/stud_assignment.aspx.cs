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
    public partial class stud_assignment : System.Web.UI.Page
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
                SqlDataAdapter ad = new SqlDataAdapter("select * from assignment where subject ='" + sub + "' ", con);
                DataSet ds = new DataSet();
                ad.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();

            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string name1 = FileUpload1.FileName;
            string path = "../faculty/stud_assignment/" + name1;
            SqlCommand cmd = new SqlCommand("select firstname from student where userid=@userid", con);
            cmd.Parameters.AddWithValue("@userid", str);
            string name = cmd.ExecuteScalar().ToString();
            SqlCommand cmd1 = new SqlCommand("insert into  stud_assignment(stu_id,stu_name,assignmentid,subject,assignment_file,start_date,submission_date)  values(@stu_id,@stu_name,@assignmentid,@subject,@assignment_file,@start_date,@submission_date)", con);
            cmd1.Parameters.AddWithValue("@stu_id", str);
            cmd1.Parameters.AddWithValue("@stu_name", name);
            cmd1.Parameters.AddWithValue("@assignmentid", Label9.Text);
            cmd1.Parameters.AddWithValue("@subject", Label10.Text);
            cmd1.Parameters.AddWithValue("@assignment_file", path);
            cmd1.Parameters.AddWithValue("@start_date", Convert.ToDateTime(Label11.Text));
            cmd1.Parameters.AddWithValue("@submission_date", Convert.ToDateTime(TextBox3.Text));


            int i = cmd1.ExecuteNonQuery();
            if (i > 0)
            {
                FileUpload1.SaveAs(Server.MapPath(path));
                Response.Write("<script> alert('assignment submitted successfully')</script>");
            }
            else
            {
                Response.Write("<script> alert('some error has occured')</script>");
            }
            con.Close();
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            con.Open();
            LinkButton asp = sender as LinkButton;
            Label lb = (Label)asp.FindControl("Label1");
            SqlCommand cmd = new SqlCommand("select * from assignment where assignmentid=@assignmentid", con);
            cmd.Parameters.AddWithValue("@assignmentid", lb.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label9.Text = dr[0].ToString();
                Label10.Text = dr[1].ToString();
                Label11.Text = Convert.ToDateTime(dr[3]).ToLongDateString();

            }
            con.Close();
        }
    }
}