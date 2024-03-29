﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigitalClassroom.Admin
{
    public partial class Ad_logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminname"] == null)
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