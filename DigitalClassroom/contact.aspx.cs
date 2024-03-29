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
    public partial class contact : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void ResetContact()
        {
            NameTextBox.Text = "";
            EmailTextBox.Text = "";
            SubjectDropDownList1.ClearSelection();
            MessageTextBox.Text = "";
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            { 
                
                SqlCommand cmd = new SqlCommand("insert into contact(name,emailid,subject,message) values(@name,@emailid,@subject,@message)", con);
                cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
                cmd.Parameters.AddWithValue("@emailid", EmailTextBox.Text);
                cmd.Parameters.AddWithValue("@subject", SubjectDropDownList1.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@message", MessageTextBox.Text);
                con.Open();
                int a = cmd.ExecuteNonQuery();
                
                if (a > 0)
                {                  
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({title: 'Good job!',text: 'Thank you for Giving Your Valuable Time',icon: 'success'});", true);
                    ResetContact();
                }
                else
                {
                    //Response.Write("<script> alert('Form Insertion Failed')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "ErrorContact();", true);
                }
                con.Close();
            }
        }
    }
}