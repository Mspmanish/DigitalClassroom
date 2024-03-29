using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigitalClassroom.Faculty
{
    public partial class fact_ResetPassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string oldpw = TextBox1.Text;
            string newpw = TextBox2.Text;
            string cnpw = TextBox3.Text;
            string facultyname = Session["facultyid"] as string;

            // Check if the new password fields are empty
            if (string.IsNullOrWhiteSpace(newpw) || string.IsNullOrWhiteSpace(cnpw))
            {
                Response.Write("<script>alert('Please enter a new password')</script>");
            }
            else
            {
                string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    con.Open();
                    // Select the user based on the username and old password
                    SqlCommand cmd = new SqlCommand("SELECT * FROM faculty WHERE facultyid = @facultyid AND password = @password", con);
                    cmd.Parameters.AddWithValue("@facultyid", facultyname);
                    cmd.Parameters.AddWithValue("@password", oldpw);

                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        dr.Close(); // Close the reader before executing the update query

                        if (newpw == cnpw)
                        {
                            // Update the password for the specific user
                            cmd = new SqlCommand("UPDATE faculty SET password = @password WHERE facultyid = @facultyid", con);
                            cmd.Parameters.AddWithValue("@password", newpw);
                            cmd.Parameters.AddWithValue("@facultyid", facultyname);
                            cmd.ExecuteNonQuery();

                            Response.Write("<script>alert('Password has been changed successfully')</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('New passwords do not match')</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Password, Please enter correct password')</script>");
                    }
                }
            }
        }
    }
}