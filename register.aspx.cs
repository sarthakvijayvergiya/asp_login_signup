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
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
            using (SqlConnection con = new SqlConnection(str))
            {
                con.Open();


                SqlCommand cmd = new SqlCommand("emplinsert", con);
                cmd.CommandType = CommandType.StoredProcedure;



                cmd.Parameters.AddWithValue("@Name", txtname.Text);
                cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
                cmd.Parameters.AddWithValue("@contanct", txtcontact.Text);
                cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
                cmd.Parameters.AddWithValue("@confirmpassword", txtconfirmpassword.Text);
                cmd.Parameters.AddWithValue("@EmailID", txtemail.Text);
                cmd.ExecuteNonQuery();
                btnsubmit.Text = "Registred succefully";


                txtname.Text = "";
                txtaddress.Text = "";
                txtcontact.Text = "";
                txtpassword.Text = "";
                txtconfirmpassword.Text = "";
                txtemail.Text = "";

                txtname.Focus();
                con.Close();
                Response.Redirect("Login.aspx");
            }
        }
    }
}