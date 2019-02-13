using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProject.BusinessLogic
{
    public class Customer
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
        public string Password { get; set; }

        public Customer(string fName, string lName, string email, string address, string password)
        {
            FirstName = fName;
            LastName = lName;
            Email = email;
            Address = address;
            Password = password;
        }
    }
}