using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //HtmlGenericControl prodTable = new HtmlGenericControl("table");
            //HtmlGenericControl prodRow = new HtmlGenericControl("tr");
            //HtmlGenericControl prodColumn = new HtmlGenericControl("td");

            //prodRow.Controls.Add(prodColumn);
            //prodTable.Controls.Add(prodRow);

           
            DataLayer.ConnectionClass.FillproductsPage(ProductsPage);  
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void OnClick_btnAddToCart(object sender, EventArgs e)
        {
            Response.Redirect("ShoppingCart.aspx?prodID=");
        }

        protected void btnAddCart_Command(object sender, CommandEventArgs e)
        {
            
        }
    }
}