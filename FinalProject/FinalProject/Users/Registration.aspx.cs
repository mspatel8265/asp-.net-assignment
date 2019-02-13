using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.BusinessLogic;

namespace FinalProject
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string firstName = txtfName.Text.Trim();
            string lastName = txtlName.Text.Trim();
            string address = txtAddress.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            Customer customer = new Customer(firstName, lastName, email, address, password);

            try
            {
                DataLayer.ConnectionClass.CustomerRegister(customer);
                Response.Write("<script> window.alert('Thank you for registering with our website!'); </script>");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}