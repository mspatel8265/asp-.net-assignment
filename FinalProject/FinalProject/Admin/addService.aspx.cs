using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject.Admin
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddService_Click(object sender, EventArgs e)
        {
            string SerName = txtServiceName.Text.Trim();
            string SerDesc = txtServiceDesc.Text.Trim();
            Decimal SerCost = Convert.ToDecimal(txtServiceCost.Text.Trim());

            try
            {
                DataLayer.ConnectionClass.AddAdminService(SerName, SerDesc, SerCost);
                lblOutputMessage.Visible = true;
                lblOutputMessage.Text = "The Service is added to the data base";
                clearAllText();
            }
            catch (Exception ex)
            {
                lblOutputMessage.Visible = true;
                lblOutputMessage.Text = "Somethings whent wrong";
            }
        }

        private void clearAllText()
        {
            txtServiceCost.Text = "";
            txtServiceDesc.Text = "";
            txtServiceName.Text = "";
        }
    }
}