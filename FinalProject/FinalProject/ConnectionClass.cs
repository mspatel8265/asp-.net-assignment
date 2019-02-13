using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

namespace FinalProject
{
    public static class ConnectionClass
    {
        static string CS = ConfigurationManager.ConnectionStrings["DBMS"].ConnectionString;
        static SqlConnection con;
        static SqlCommand cmd;
    }
}