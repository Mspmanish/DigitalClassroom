using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigitalClassroom.Student
{
    public partial class Student : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string userid = Session["userid"].ToString();
            }
            catch (Exception ex)
            {
                Response.Redirect("../Login.aspx");
            }
        }
    }
}