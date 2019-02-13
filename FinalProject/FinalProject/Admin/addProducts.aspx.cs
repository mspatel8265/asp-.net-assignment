using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.BusinessLogic;

namespace FinalProject.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {

            if (FileUploadProduct.HasFile)
            {
                string strName = FileUploadProduct.FileName;
                string imgPath = "";
          
                FileUploadProduct.PostedFile.SaveAs(Server.MapPath("~/ProductImage/" + strName));
                imgPath = "../ProductImage/" + strName;
                Products newProd = new Products(txtProdName.Text.Trim(), txtProdDesc.Text.Trim(), Convert.ToDecimal(txtProdPrice.Text.Trim()),imgPath );

                try
                {
                    DataLayer.ConnectionClass.AddAdminProducts(newProd);
                    lblMessage.Visible = true;
                    lblMessage.Text = "Image has been uploaded successfully";
                    clearAllText();
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Something went wrong";
                }
            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Please upload an image";
            }
        }

        private void clearAllText()
        {
            txtProdDesc.Text = "";
            txtProdName.Text = "";
            txtProdPrice.Text = "";
        }

        protected void txtProdPrice_TextChanged(object sender, EventArgs e)
        {

        }
    }
}