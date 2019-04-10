using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication11
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Name"] = "";
            Session["Password"] = "";


            string str = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
            using (SqlConnection con = new SqlConnection(str))
            {
                string Name = txtname.Text;

                string Password = txtpassword.Text;

                con.Open();
                SqlCommand cmd = new SqlCommand("select Name,Password from empl where Name=@Name and Password=@Password", con);

                cmd.Parameters.AddWithValue("@Name", txtname.Text);
                cmd.Parameters.AddWithValue("@Password", txtpassword.Text);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                con.Close();
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["Name"] = txtname.Text;
                    Response.Redirect("~/welcome.aspx");
                }
                else
                {
                    lblMsg.Text = "UserName and Password is wrong";
                }

            }
        }
    }
}