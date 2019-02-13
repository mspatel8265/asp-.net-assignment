using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Configuration;

namespace FinalProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string LoginID = WebConfigurationManager.AppSettings["AdminLoginID"];
            string Password = WebConfigurationManager.AppSettings["AdminPassword"];
            string flag ;
            string email = txtLoginId.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (txtLoginId.Text == LoginID && txtPassword.Text == Password)
            {
                // Checking if the user is an Admin User
                Session["Webdmin"] = "WebsiteAdmin";
                Response.Redirect("~/Admin/addProducts.aspx");
            }
            else
            {
                // Checking if the user is a regular user
                DataLayer.ConnectionClass.checkUser(email, password, out flag);

                // Giving users three chances to login otherwise redirecting them to the Registartion page
                if (flag.Equals("true"))
                {
                    //If the user is correct the page will be directed to the Home Page 
                    Response.Redirect("~/Users/Home.aspx");
                }
                else if(flag.Equals("try"))
                {
                    lblAlert.Text = "Incorrect LoginId/Password";
                }
                else
                {
                    Response.Redirect("~/Users/Registration.aspx");
                }

            }
        }
    }
}