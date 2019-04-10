using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication11
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] == null)
            {
                 
                Response.Write("Session is null");
                return;
            }
            else
            {
                Response.Write(" Welcome " + Convert.ToString(Session["Name"].ToString()));
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }
    }
}