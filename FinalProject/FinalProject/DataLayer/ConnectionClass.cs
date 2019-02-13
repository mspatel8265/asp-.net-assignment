using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.BusinessLogic;

namespace FinalProject.DataLayer
{
    public static class ConnectionClass
    {
        // Getting the connection 
        //  static string CS = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\twinBoysDatabase.mdf;Integrated Security=True";
        static string CS = ConfigurationManager.ConnectionStrings["DBMS"].ConnectionString;

        // Creating the SqlConnection and the SqlCommand objects
        private static SqlConnection con = new SqlConnection(CS);
        private static SqlCommand cmd;

        //Extra varibles required in the methods
        private static int attempts = 0;

        public static void CustomerRegister(Customer cust)
        {
            // creating a SqlCommand and connecting it with the connection 
            cmd = new SqlCommand("CUSTOMERREGISTRATION", con);

            // Declaring the command type to be a stored procedure 
            cmd.CommandType = CommandType.StoredProcedure;

            // Providing the value of the parameters to the stored procedure using command
            cmd.Parameters.AddWithValue("@FirstName", cust.FirstName);
            cmd.Parameters.AddWithValue("@LastName", cust.LastName);
            cmd.Parameters.AddWithValue("@Address", cust.Address);
            cmd.Parameters.AddWithValue("@Email", cust.Email);
            cmd.Parameters.AddWithValue("@Password", cust.Password);

            // opening the connection in the try block and executing the query 
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.ExecuteNonQuery();
            }
            finally
            {
                // Closing the connection in the finally block in order to make sure that after the command is executed the cnnection is closed
                con.Close();

                // Disposing the command at the end
                cmd.Dispose();
            }

        }

        public static void AddAdminProducts(Products prod)
        {
           // string query = String.Format("Insert into tblAdminProducts values ('{0}', '{1}', '{2}', '{3}')", prod.Name, prod.Desc, prod.Price, prod.ImgURL);
            cmd = new SqlCommand("ADDADMINPRODUCTS", con);

            // Declaring the command type
            cmd.CommandType = CommandType.StoredProcedure;

            // Adding the values in using the parameters
            cmd.Parameters.AddWithValue("@ProdName", prod.Name);
            cmd.Parameters.AddWithValue("@ProdDesc", prod.Desc);
            cmd.Parameters.AddWithValue("@ProdPrice", prod.Price);
            cmd.Parameters.AddWithValue("@ProdImgURL", prod.ImgURL);

            try
            {
                // Opening the command and executing the query 
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.ExecuteNonQuery();
            }
            finally
            {
                // Closing the connection and disposing the command at the end
                con.Close();
                cmd.Dispose();

            }
        }

        public static void checkUser(string email, string password, out string flag)
        {
            string query = String.Format("Select * from tblCustomer where Email='{0}' AND Password='{1}' ", email, password);
            cmd = new SqlCommand(query, con);

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlDataReader rdr = cmd.ExecuteReader();

                if (rdr.Read())
                {
                    // If the user exists, if data is retrieved from the table then flag is true
                    flag = "true";
                }
                else
                {
                    if (attempts < 3)
                    {
                        flag = "try";
                        attempts++;
                    }
                    else
                    {
                        flag = "block";
                    }
                }
                
            }
            finally
            {
                con.Close();
                cmd.Dispose();
            }
        }

        public static void AddAdminService(string SerName, string SerDesc, decimal SerCost)
        {
            cmd = new SqlCommand("ADDADMINSERVICE", con);

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@ServiceName", SerName);
            cmd.Parameters.AddWithValue("@ServiceDesc", SerDesc);
            cmd.Parameters.AddWithValue("@ServiceCost", SerCost);

            try
            {
                // Opening the command and executing the query 
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.ExecuteNonQuery();
            }
            finally
            {
                // Closing the connection and disposing the command at the end
                con.Close();
                cmd.Dispose();

            }
        }

        public static void FillproductsPage(DataList prodDataList)
        {
            
            cmd = new SqlCommand("Select* from tblAdminProducts", con);
            DataTable dt = new DataTable();
            try
            {
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                prodDataList.DataSource = dt;
                prodDataList.DataBind();
            }
            finally
            {
                con.Close();
                cmd.Dispose();
            }
        }

        public static void FillServicePage(DataList serviceDataList)
        {
            cmd = new SqlCommand("Select* from tblAdminService", con);
            DataTable dt = new DataTable();
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                serviceDataList.DataSource = dt;
                serviceDataList.DataBind();
            }
            finally
            {
                con.Close();
                cmd.Dispose();
            }
        }

    }
}