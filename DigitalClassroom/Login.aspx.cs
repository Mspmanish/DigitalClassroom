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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                con.Open();
                string pass = "", status = "";
                if (DropDownList1.SelectedValue == "Student")
                {
                    SqlCommand cmd = new SqlCommand("select password,status from student where userid=@userid", con);
                    cmd.Parameters.AddWithValue("@userid", TextBox1.Text);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        pass = dr[0].ToString();
                        status = dr[1].ToString();
                    }
                    if (pass == "")
                    {
                        Response.Write("<script> alert(' this username does not exist..if u r new user then register first')</script>");
                    }
                    else
                    {
                        if (status == "Allowed")
                        {
                            if (pass == TextBox2.Text)
                            {
                                {
                                    Session["userid"] = TextBox1.Text;
                                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({title: 'Good job!',text: 'ur welcome in eclassroom',icon: 'success'});window.location='/Student/StudentHome.aspx';", true);
                                }
                            }
                            else
                            {
                               
                                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({title: 'Failure',text: 'password is incorrect..retry again',icon: 'error'});", true);
                                TextBox1.Text = "";
                                TextBox2.Text = "";
                            }
                        }
                        else
                        {
                            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({title: 'Failure',text: 'Your status is still block ...wait for some time',icon: 'error'});", true);
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                        }
                    }
                }
                else if (DropDownList1.SelectedValue == "Admin")
                {
                    SqlCommand cmd = new SqlCommand("select password from admin where adminname=@adminname", con);
                    cmd.Parameters.AddWithValue("@adminname", TextBox1.Text);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        pass = dr[0].ToString();
                    }
                    if (pass == "")
                    {
                        Response.Write("<script> alert(' this admin does not exist..if u r new admin then register first')</script>");
                    }
                    else if (pass == TextBox2.Text)
                    {
                        Session["adminname"] = TextBox1.Text;
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('ur welcome in eclassroom');window.location='/Admin/AdminHome.aspx';", true);
                    }
                    else
                    {
                        Response.Write("<script> alert(' password is incorrect..retry again')</script>");
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                    }
                }
                else if (DropDownList1.SelectedValue == "Faculty")
                {
                    SqlCommand cmd = new SqlCommand("select password,status from faculty where facultyid=@facultyid", con);
                    cmd.Parameters.AddWithValue("@facultyid", TextBox1.Text);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        pass = dr[0].ToString();
                        status = dr[1].ToString();
                    }
                    if (pass == "")
                    {
                        Response.Write("<script> alert(' this facultyname does not exist..if u r new faculty then register first')</script>");
                    }
                    else
                    {
                        if (status == "Allowed")
                        {

                            if (pass == TextBox2.Text)
                            {
                                {
                                    Session["facultyid"] = TextBox1.Text;
                                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('ur welcome in eclassroom');window.location='/Faculty/FacultyHome.aspx';", true);
                                }
                            }
                            else
                            {
                                Response.Write("<script> alert(' password is incorrect..retry again')</script>");
                                TextBox1.Text = "";
                                TextBox2.Text = "";
                            }
                        }
                        else
                        {
                            Response.Write("<script> alert('Your status is still block..Try Later')</script>");
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                        }
                    }
                }
                con.Close();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "Student")
            {
                if (TextBox1.Text != "")
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select password from student where userid=@userid", con);
                    cmd.Parameters.AddWithValue("@userid", TextBox1.Text);
                    string str = "";
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        str = dr[0].ToString();
                    }
                    if (str == "")
                    {
                        Response.Write("<script> alert('This username does not exist')</script>");
                        TextBox1.Text = "";
                    }
                    else
                    {
                        Session["user1"] = TextBox1.Text;
                        Response.Redirect("ForgetPassword.aspx");
                    }
                    con.Close();
                }
            }
            else if (DropDownList1.SelectedValue == "Faculty")
            {
                if (TextBox1.Text != "")
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select password from faculty where facultyid=@facultyid", con);
                    cmd.Parameters.AddWithValue("@facultyid", TextBox1.Text);
                    string str = "";
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        str = dr[0].ToString();
                    }
                    if (str == "")
                    {
                        Response.Write("<script> alert('This faculty does not exist')</script>");
                        TextBox1.Text = "";
                    }
                    else
                    {
                        Session["faculty"] = TextBox1.Text;
                        Response.Redirect("ForPasswordFact.aspx");
                    }
                    con.Close();
                }
            }
        }
    }
}