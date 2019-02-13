using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (string strFileName in Directory.GetFiles(Server.MapPath("~/ProductImage/")))
            {
                ImageButton imageButton = new ImageButton();
                FileInfo fileInfo = new FileInfo(strFileName);
                imageButton.ImageUrl = "~/ProductImage/" + fileInfo.Name;
                imageButton.Width = Unit.Pixel(100);
                imageButton.Height = Unit.Pixel(100);
                imageButton.Style.Add("padding", "5px");
                imageButton.Click += new ImageClickEventHandler(imageButton_Click);
                Panel1.Controls.Add(imageButton);
            }
        }

        void imageButton_Click(Object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Users/WebForm1.aspx?ImageUrl=" +((ImageButton)sender).ImageUrl);
        }
    }
}