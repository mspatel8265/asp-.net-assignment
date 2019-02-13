using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetImgUrl();
            }
        }

        protected void ImgTimer_Tick(object sender, EventArgs e)
        {
            GetImgUrl();
        }

        private void GetImgUrl()
        {
            Random _rand = new Random();
            int i = _rand.Next(1, 17);
            ImgRotator.ImageUrl = "~/HomePageImg/" + i.ToString() + ".png";
        }
    }
}