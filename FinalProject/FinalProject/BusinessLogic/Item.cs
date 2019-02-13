using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProject.BusinessLogic
{
    public class Item //: IFormattable
    {
        //#region Private Members
        //private int _productID;
        //private string _productName;
        //private int _quantity;
        //private decimal _unitPrice;
        //#endregion

        //#region Properties 
        //public int ProductID
        //{
        //    get { return _productID; }
        //    set { _productID = value; }
        //}

        //public string ProductName
        //{
        //    get { return _productName; }
        //    set { _productName = value; }
        //}

        //public int Quantity
        //{
        //    get { return _quantity; }
        //    set { _quantity = value; }
        //}

        //public decimal UnitPrice
        //{
        //    get { return _unitPrice; }
        //    set { _unitPrice = value; }
        //}

        //public decimal ItemTotal
        //{
        //    get { return _quantity * _unitPrice; }
        //}
        //#endregion

        //internal Item() :this(0,string.Empty, 0, 0m) { }

        //internal Item(int productID, string productName, int quantity, decimal unitPrice)
        //{
        //    _productID = productID;
        //    _productName = productName;
        //    _quantity = quantity;
        //    _unitPrice = unitPrice;
        //}

        //#region IFormattable Members
        //string IFormattable.ToString(string format, IFormatProvider formatProvider)
        //{
        //    if (format == null) format = "G";

        //    if(formatProvider != null)
        //    {
        //        ICustomFormatter formatter = formatProvider.GetFormat(this.GetType()) 
        //            as ICustomFormatter;

        //        if (formatter != null)
        //            return formatter.Format(format, this, formatProvider);
        //    }

        //    switch (format)
        //    {
        //        case "f": return string.Format(" {0} {1,10} {2,10} {3,20}", _productName, _quantity.ToString(), _unitPrice.ToString("c"), ItemTotal.ToString("c"));
        //        case "G":
        //        default: return string.Format("{0}", _productID.ToString());
        //    }
        //}
        //#endregion

        //#region System.Object Overrides
        //public override string ToString()
        //{
        //    return string.Format("{0}", _productID.ToString());
        //}
        //public override bool Equals(object obj)
        //{
        //    if (obj == null) return false;
        //    if (object.ReferenceEquals(this, obj)) return true;
        //    if (this.GetType() != obj.GetType()) return false;

        //    Item objItem = (Item)obj;
        //    if (_productID == objItem._productID) return true;

        //    return false;
        //}
        //public override int GetHashCode()
        //{
        //    return _productID.GetHashCode();
        //}
        //#endregion
    }
}