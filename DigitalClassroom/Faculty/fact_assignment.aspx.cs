using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigitalClassroom.Faculty
{
    public partial class fact_assignment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
                con.Open();
                SqlDataAdapter ad = new SqlDataAdapter("select * from assignment", con);
                DataSet ds = new DataSet();
                ad.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();
            string name = FileUpload1.FileName;
            string path = "/assignment/" + name;
            SqlCommand cmd = new SqlCommand("insert into assignment (assignmentid,subject,assignment_file,start_date,submission_date) values(@assignmentid,@subject,@assignment_file,@start_date,@submission_date)", con);
            cmd.Parameters.AddWithValue("@assignmentid", TextBox1.Text);
            cmd.Parameters.AddWithValue("@subject", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@assignment_file", path);
            cmd.Parameters.AddWithValue("@start_date", TextBox2.Text);
            cmd.Parameters.AddWithValue("@submission_date", TextBox3.Text);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                FileUpload1.SaveAs(Server.MapPath(path));
                Response.Write("<script>alert('Asignment Uploaded Successfully')</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Try again')</script>");
            }

            SqlDataAdapter ad = new SqlDataAdapter("select * from assignment", con);
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


        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label Label1 = (Label)GridView1.Rows[e.RowIndex].FindControl("Label8");
            con.Open();
            string cmdstr = "delete assignment where assignmentid='" + Label1.Text + "'";
            SqlCommand cmd = new SqlCommand(cmdstr, con);
            cmd.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            SqlDataAdapter ad = new SqlDataAdapter("select * from assignment", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select * from assignment", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select * from assignment", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label Label1 = (Label)GridView1.Rows[e.RowIndex].FindControl("Label9");
            TextBox TextBox2 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Txteditsubject");
            TextBox TextBox3 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Txteditassgfile");
            TextBox TextBox4 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Txteditstdate");
            TextBox TextBox5 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Txteditsubdate");
            con.Open();
            string cmdstr = "UPDATE assignment SET subject=@subject, assignment_file=@assignment_file, start_date=@start_date, submission_date=@submission_date  WHERE assignmentid=@assignmentid";
            SqlCommand cmd = new SqlCommand(cmdstr, con);
            cmd.Parameters.AddWithValue("@subject", TextBox2.Text);
            cmd.Parameters.AddWithValue("@assignment_file", TextBox3.Text);
            cmd.Parameters.AddWithValue("@start_date", TextBox4.Text);
            cmd.Parameters.AddWithValue("@submission_date", TextBox5.Text);
            cmd.Parameters.AddWithValue("@assignmentid", Label1.Text);
            cmd.ExecuteNonQuery();

            GridView1.EditIndex = -1;
            SqlDataAdapter ad = new SqlDataAdapter("select * from assignment", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }


    }
}