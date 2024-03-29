using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigitalClassroom.Faculty
{
    public partial class faculty_lecture : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
                con.Open();
                SqlDataAdapter ad = new SqlDataAdapter("select * from lecture", con);
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
            string str = Session["facultyid"].ToString();
            string name = FileUpload1.FileName;
            string path = "/lecture/" + name;
            SqlCommand cmd = new SqlCommand("insert into lecture (lectureid,subject,topic,lecture,publish_date,faculty_id) values(@lectureid,@course,@topic,@lecture,@publish_date,@faculty_id)", con);
            cmd.Parameters.AddWithValue("@lectureid", TextBox1.Text);
            cmd.Parameters.AddWithValue("@course", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@topic", TextBox2.Text);
            cmd.Parameters.AddWithValue("@lecture", path);
            cmd.Parameters.AddWithValue("@publish_date", TextBox3.Text);
            cmd.Parameters.AddWithValue("@faculty_id", str);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                FileUpload1.SaveAs(Server.MapPath(path));
                Response.Write("<script>alert('Lecture Uploaded Successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Try again')</script>");
            }

            SqlDataAdapter ad = new SqlDataAdapter("select * from lecture", con);
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
            string cmdstr = "delete lecture where lectureid='" + Label1.Text + "'";
            SqlCommand cmd = new SqlCommand(cmdstr, con);
            cmd.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            SqlDataAdapter ad = new SqlDataAdapter("select * from lecture", con);
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
            SqlDataAdapter ad = new SqlDataAdapter("select * from lecture", con);
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
            SqlDataAdapter ad = new SqlDataAdapter("select * from lecture", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label Label1 = (Label)GridView1.Rows[e.RowIndex].FindControl("Label9");
            DropDownList DropDownList = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList2");
            TextBox TextBox2 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Txtedittopic");
            FileUpload FileUpload = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload2");
            TextBox TextBox3 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Texteditpubdate");

            if (FileUpload.HasFile)
            {

                string name = FileUpload.FileName;
                string path = "~/lecture/" + name;
                FileUpload.SaveAs(Server.MapPath(path));
                con.Open();
                string cmdstr = "UPDATE lecture SET subject=@subject,topic=@topic,lecture=@lecture,publish_date=@publish_date  WHERE lectureid=@lectureid";
                SqlCommand cmd = new SqlCommand(cmdstr, con);

                cmd.Parameters.AddWithValue("@subject", DropDownList.SelectedValue);
                cmd.Parameters.AddWithValue("@topic", TextBox2.Text);
                cmd.Parameters.AddWithValue("@lecture", path);
                cmd.Parameters.AddWithValue("@publish_date", TextBox3.Text);
                //cmd.Parameters.AddWithValue("@faculty_id", TextBox3.Text);
                cmd.Parameters.AddWithValue("@lectureid", Label1.Text);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            else
            {
                con.Open();
                string cmdstr = "UPDATE lecture SET subject=@subject,topic=@topic,publish_date=@publish_date   WHERE lectureid=@lectureid";
                SqlCommand cmd = new SqlCommand(cmdstr, con);

                cmd.Parameters.AddWithValue("@subject", DropDownList.SelectedValue);
                cmd.Parameters.AddWithValue("@topic", TextBox2.Text);
                cmd.Parameters.AddWithValue("@publish_date", TextBox3.Text);
                //cmd.Parameters.AddWithValue("@faculty_id", TextBox3.Text);
                cmd.Parameters.AddWithValue("@lectureid", Label1.Text);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            GridView1.EditIndex = -1;
            SqlDataAdapter ad = new SqlDataAdapter("select * from lecture", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }
}