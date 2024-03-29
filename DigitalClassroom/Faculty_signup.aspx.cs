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
    public partial class Faculty_signup : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void ResetContact()
        {
            NameTextBox.Text = "";
            FirstNameTextBox.Text = "";
            SurnameTextBox.Text = "";
            GenderDropDownList.SelectedValue = "";
            DOBTextBox.Text = "";
            AddressTextBox.Text = "";
            ChoosecourseDropDownList.SelectedValue = "";
            EmailTextBox.Text = "";
            ContactTextBox.Text = "";
            QuestionDropDownList.SelectedValue = "";
            AnswersTextBox.Text = "";
            UserId.Text = "";
            PasswordTextBox.Text = "";


        }
        protected void StudentSignUpButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                con.Open();
                string name = FileUpload1.FileName;
                string path = "images/" + name;
                SqlCommand cmd = new SqlCommand("insert into faculty(name,firstname,surname,gender,dob,address,course,emailid,contact,securityquestion,securityanswers,facultyid,password,profilepic,status) values(@name,@firstname,@surname,@gender,@dob,@address,@course,@emailid,@contact,@securityquestion,@securityanswers,@facultyid,@password,@profilepic,@status)", con);
                cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
                cmd.Parameters.AddWithValue("@firstname", FirstNameTextBox.Text);
                cmd.Parameters.AddWithValue("@surname", SurnameTextBox.Text);
                cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedValue);
                cmd.Parameters.AddWithValue("@dob", DOBTextBox.Text);
                cmd.Parameters.AddWithValue("@address", AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@course", ChoosecourseDropDownList.SelectedValue);
                cmd.Parameters.AddWithValue("@emailid", EmailTextBox.Text);
                cmd.Parameters.AddWithValue("@contact", ContactTextBox.Text);
                cmd.Parameters.AddWithValue("@securityquestion", QuestionDropDownList.SelectedValue);
                cmd.Parameters.AddWithValue("@securityanswers", AnswersTextBox.Text);
                cmd.Parameters.AddWithValue("@facultyid", UserId.Text);
                cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);
                cmd.Parameters.AddWithValue("@profilepic", path);
                cmd.Parameters.AddWithValue("@status", "Blocked");
                int i = cmd.ExecuteNonQuery();

                if (i > 0)
                {
                    FileUpload1.SaveAs(Server.MapPath(path));
                    //Response.Write("<script> alert('one record inserted successfully')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({title: 'Good job!',text: 'You have Registered Successfully',icon: 'success'});", true);
                    ResetContact();
                }
                else
                {
                    //Response.Write("<script> alert('some error has occured')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({title: 'Failure',text: 'Some error has occured',icon: 'error'});", true);
                }
                con.Close();
            }
        }
    }
}