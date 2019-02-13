using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProject.BusinessLogic
{
    public class Products
    {
        public string Name { get; set; }
        public string Desc { get; set; }
        public decimal Price { get; set; }
        public string ImgURL { get; set; }

        public Products(string name, string desc, decimal price, string imgUrl)
        {
            Name = name;
            Desc = desc;
            Price = price;
            ImgURL = imgUrl;
        }
    }
}