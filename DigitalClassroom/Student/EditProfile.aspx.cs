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
    public partial class edit1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string str = Session["userid"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand("select *from student where userid=@userid", con);
                cmd.Parameters.AddWithValue("@userid", str);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Label14.Text = dr[12].ToString();
                    TextBox3.Text = dr[13].ToString();
                    RadioButtonList1.Text = dr[3].ToString();
                    TextBox5.Text = Convert.ToDateTime(dr[4]).ToShortDateString();
                    DropDownList1.Text = dr[6].ToString();
                    TextBox6.Text = dr[5].ToString();
                    TextBox7.Text = dr[8].ToString();
                    TextBox8.Text = dr[9].ToString();
                    DropDownList3.Text = dr[10].ToString();
                    TextBox9.Text = dr[11].ToString();
                    Image4.ImageUrl = "../" + dr[14].ToString();
                }
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string name = FileUpload1.FileName;
            string path = "../" + name;
            SqlCommand cmd = new SqlCommand("update student set password=@password,gender=@gender,dob=@dob,course=@course,address=@address,emailid=@emailid,contact=@contact,securityquestion=@securityquestion,securityanswers=@securityanswers,profilepic=@profilepic  where userid=@userid", con);
            cmd.Parameters.AddWithValue("@userid", Label14.Text);
            cmd.Parameters.AddWithValue("@password", TextBox3.Text);
            cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedValue);
            cmd.Parameters.AddWithValue("@dob", Convert.ToDateTime(TextBox5.Text));
            cmd.Parameters.AddWithValue("@course", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@address", TextBox6.Text);
            cmd.Parameters.AddWithValue("@emailid", TextBox7.Text);
            cmd.Parameters.AddWithValue("@contact", TextBox8.Text);

            cmd.Parameters.AddWithValue("@securityquestion", DropDownList3.SelectedValue);
            cmd.Parameters.AddWithValue("@securityanswers", TextBox9.Text);
            cmd.Parameters.AddWithValue("@profilepic", path);

            int i = cmd.ExecuteNonQuery();

            if (i > 0)
            {
                FileUpload1.SaveAs(Server.MapPath(path));
                Response.Write("<script> alert('one record Updated successfully')</script>");
            }
            else
            {
                Response.Write("<script> alert('some error has occured')</script>");
            }
            con.Close();
        }
    }
}