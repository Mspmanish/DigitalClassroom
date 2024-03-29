using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigitalClassroom.Student
{
    public partial class stud_logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            else
            {
                Session.Abandon();
                Session.Clear();
                Response.Redirect("../Login.aspx");
            }
        }
    }
}