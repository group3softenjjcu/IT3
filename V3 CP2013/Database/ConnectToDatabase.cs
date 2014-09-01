using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Common;
using System.Data.OleDb;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Database
{
    public class ConnectToDatabase
    {
        private static SqlConnection con;
        private static string strcon;
        private static string dbConnection;

        public string DbConnection
        {
            get { return dbConnection; }
            set { dbConnection = value; }
        }
        /*
        public static SqlConnection Getconnect()
        {
            try
            {
                strcon = ConfigurationManager.ConnectionStrings["strcon"].ConnectionString;
                con = new SqlConnection(strcon);
                con.Open();
            }
            catch
            {
                con = null;
            }
            return con;
        }  
         */

        public static SqlConnection Getconnect()
        {
            try
            {
                strcon = ConfigurationManager.ConnectionStrings[""+dbConnection+""].ConnectionString;
                con = new SqlConnection(strcon);
                con.Open();
            }
            catch
            {
                con = null;
            }
            return con;
        }        
    }
}
