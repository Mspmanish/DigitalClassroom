using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigitalClassroom.Admin
{
    public partial class Verifystufact : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedOption = DropDownList1.SelectedValue;

            // Check which option is selected
            if (selectedOption == "Student")
            {
                // Bind data for students
                BindStudentData();
                // Hide the GridView for faculty
                GridView2.Visible = false;
                Button14.Visible = false;
                Button15.Visible = false;
                // Show the GridView for students
                GridView1.Visible = true;
                Button12.Visible = true;
                Button13.Visible = true;
            }
            else if (selectedOption == "Faculty")
            {
                // Bind data for faculty
                BindFacultyData();
                // Hide the GridView for students
                GridView1.Visible = false;
                Button12.Visible = false;
                Button13.Visible = false;
                // Show the GridView for faculty
                GridView2.Visible = true;
                Button14.Visible = true;
                Button15.Visible = true;

            }
            else
            {
                // Hide both GridViews if no option is selected
                GridView1.Visible = false;
                GridView2.Visible = false;
                Button12.Visible = false;
                Button13.Visible = false;
                Button14.Visible = false;
                Button15.Visible = false;
            }
        }

        protected void BindStudentData()
        {
            string str = "select  userid,name,course,address,emailid,contact,profilepic,securityanswers,status from student";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void BindFacultyData()
        {
            string str = "select  facultyid,name,course,address,emailid,contact,profilepic,securityanswers,status from faculty";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            con.Open();
            foreach (GridViewRow gvr in GridView1.Rows)
            {
                Label lb = (Label)gvr.FindControl("Label1");
                CheckBox chk = (CheckBox)gvr.FindControl("CheckBox1");
                if (chk != null && chk.Checked)
                {
                    SqlCommand cmd = new SqlCommand("update student set status=@status where userid=@userid", con);
                    cmd.Parameters.AddWithValue("@status", "Allowed");
                    cmd.Parameters.AddWithValue("@userid", lb.Text);
                    cmd.ExecuteNonQuery();
                    BindStudentData();
                }
            }
            con.Close();
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            con.Open();
            foreach (GridViewRow gvr in GridView1.Rows)
            {
                Label lb = (Label)gvr.FindControl("Label1");
                CheckBox chk = (CheckBox)gvr.FindControl("CheckBox1");
                if (chk != null && chk.Checked)
                {
                    SqlCommand cmd = new SqlCommand("update student set status=@status where userid=@userid", con);
                    cmd.Parameters.AddWithValue("@status", "Blocked");
                    cmd.Parameters.AddWithValue("@userid", lb.Text);
                    cmd.ExecuteNonQuery();
                    BindStudentData();
                }
            }
            con.Close();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
           
            Label Label1 = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            string confirmMessage = "Are you sure you want to delete this record?";
            string script = "if (!confirm('" + confirmMessage + "')) return;";
            ScriptManager.RegisterStartupScript(this, GetType(), "confirm", script, true);
            con.Open();
            string cmdstr = "delete student where userid='" + Label1.Text+ "'";
            SqlCommand cmd = new SqlCommand(cmdstr, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            BindStudentData();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindStudentData();
        }


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindStudentData();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label Label2 = (Label)GridView1.Rows[e.RowIndex].FindControl("Label2");
            TextBox TextBox6 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Txteditname");
            TextBox TextBox2 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Txteditcourse");
            TextBox TextBox3 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Txteditaddress");
            TextBox TextBox4 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Txteditemail");
            TextBox TextBox5 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Txteditcontact");
            //TextBox TextBox6 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Txteditstatus");
            FileUpload FileUpload = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload1");

            // Check if a file was uploaded
            if (FileUpload.HasFile)
            {
                string name = FileUpload.FileName;
                string path = "/images/" + name;
                FileUpload.SaveAs(Server.MapPath(path));

                // Update the database with the file path
                con.Open();
                string cmdstr = "update student set name='"+TextBox6.Text+"',course='" + TextBox2.Text + "', address = '" + TextBox3.Text + "',emailid = '" + TextBox4.Text + "',contact = '" + TextBox5.Text + "',profilepic = '" + path + "'   where userid='" + Label2.Text + "'  ";
                SqlCommand cmd = new SqlCommand(cmdstr, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            else
            {
                // Update the database without changing the profile picture
                con.Open();
                string cmdstr = "update student set name='" + TextBox6.Text + "',course='" + TextBox2.Text + "', address = '" + TextBox3.Text + "',emailid = '" + TextBox4.Text + "',contact = '" + TextBox5.Text + "'   where userid='" + Label2.Text + "'  ";
                SqlCommand cmd = new SqlCommand(cmdstr, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            GridView1.EditIndex = -1;
            BindStudentData();

        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            con.Open();
            foreach (GridViewRow gvr in GridView2.Rows)
            {
                Label lb = (Label)gvr.FindControl("Label17");
                CheckBox chk = (CheckBox)gvr.FindControl("CheckBox2");
                if (chk != null && chk.Checked)
                {
                    SqlCommand cmd = new SqlCommand("update faculty set status=@status where facultyid=@facultyid", con);
                    cmd.Parameters.AddWithValue("@status", "Allowed");
                    cmd.Parameters.AddWithValue("@facultyid", lb.Text);
                    cmd.ExecuteNonQuery();
                    BindFacultyData();
                }

            }
            con.Close();
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            con.Open();
            foreach (GridViewRow gvr in GridView2.Rows)
            {
                Label lb = (Label)gvr.FindControl("Label17");
                CheckBox chk = (CheckBox)gvr.FindControl("CheckBox2");
                if (chk != null && chk.Checked)
                {
                    SqlCommand cmd = new SqlCommand("update faculty set status=@status where facultyid=@facultyid", con);
                    cmd.Parameters.AddWithValue("@status", "Blocked");
                    cmd.Parameters.AddWithValue("@facultyid", lb.Text);
                    cmd.ExecuteNonQuery();
                    BindFacultyData();
                }

            }
            con.Close();
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label Label1 = (Label)GridView2.Rows[e.RowIndex].FindControl("Label17");
            con.Open();
            string cmdstr = "delete faculty where facultyid='" + Label1.Text + "'";
            SqlCommand cmd = new SqlCommand(cmdstr, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView2.EditIndex = -1;
            BindFacultyData();
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            BindFacultyData();
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            BindFacultyData();
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label Label2 = (Label)GridView2.Rows[e.RowIndex].FindControl("Label16");
            TextBox TextBox6 = (TextBox)GridView2.Rows[e.RowIndex].FindControl("Txteditname1");
            TextBox TextBox2 = (TextBox)GridView2.Rows[e.RowIndex].FindControl("Txteditcourse1");
            TextBox TextBox3 = (TextBox)GridView2.Rows[e.RowIndex].FindControl("Txteditaddress1");
            TextBox TextBox4 = (TextBox)GridView2.Rows[e.RowIndex].FindControl("Txteditemail1");
            TextBox TextBox5 = (TextBox)GridView2.Rows[e.RowIndex].FindControl("Txteditcontact1");
            //TextBox TextBox6 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Txteditstatus");
            FileUpload FileUpload = (FileUpload)GridView2.Rows[e.RowIndex].FindControl("FileUpload3");

            // Check if a file was uploaded
            if (FileUpload.HasFile)
            {
                string name = FileUpload.FileName;
                string path = "~/images/" + name;
                FileUpload.SaveAs(Server.MapPath(path));

                // Update the database with the file path
                con.Open();
                string cmdstr = "update faculty set name='" + TextBox6.Text + "',course='" + TextBox2.Text + "', address = '" + TextBox3.Text + "',emailid = '" + TextBox4.Text + "',contact = '" + TextBox5.Text + "',profilepic = '" + path + "'   where facultyid='" + Label2.Text + "'  ";
                SqlCommand cmd = new SqlCommand(cmdstr, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            else
            {
                // Update the database without changing the profile picture
                con.Open();
                string cmdstr = "update faculty set name='" + TextBox6.Text + "',course='" + TextBox2.Text + "', address = '" + TextBox3.Text + "',emailid = '" + TextBox4.Text + "',contact = '" + TextBox5.Text + "'   where facultyid='" + Label2.Text + "'  ";
                SqlCommand cmd = new SqlCommand(cmdstr, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            GridView2.EditIndex = -1;
            BindFacultyData();
        }
    }
}