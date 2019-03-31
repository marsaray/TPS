//Data Layer Code TPS Website
//Programmed by: Markus Reynolds
//3/31/2019
//Open source avaiable under GNU License
//A GNU License is avaiable in the documentation for this code but you can also find it online

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Net;
using System.Data;

/// this is code from my other class I'm using as a guide
/// we will be basically using this as it's perfectly good for getting items from a database

namespace TPS.App_Code
{
    public class clsDataLayer
    {
        public static bool SaveStaff(string Database, string FirstName, string LastName, string EduLevel, string Experience,string Salary)
        {
            bool recordSaved;
            OleDbTransaction myTransaction = null;
            try
            {
                OleDbConnection conn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" +
                    "Data Source=" + Database);
                conn.Open();
                OleDbCommand command = conn.CreateCommand();
                string strSQL;
                myTransaction = conn.BeginTransaction();
                command.Transaction = myTransaction;
                Console.Write("test");
                strSQL = "Insert into tblStaffMember (FirstName ,LastName ,EduLevel,Experience,Salary) " 
                    + "values ('" + FirstName + "','"
                    + LastName + "','"
                    + EduLevel + "','" + Experience + "','" + Salary + "' ) ";
                command.CommandType = CommandType.Text;
                command.CommandText = strSQL;
                command.ExecuteNonQuery();
                myTransaction.Commit();
                conn.Close();
                recordSaved = true;
                Console.Write("Test");
            }
            catch (Exception ex)
            {
                myTransaction.Rollback();
                recordSaved = false;
            }
            return recordSaved;
        }

        /*
        // This function verifies a user in the tblUser table
        public static dsUserLogin VerifyUser(string Database, string UserName, string UserPassword)
        {
            // Add your comments here
            dsUserLogin DS;
            OleDbConnection sqlConn;
            OleDbDataAdapter sqlDA;
            // Add your comments here
            sqlConn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" +
            "Data Source=" + Database);
            // Add your comments here
            sqlDA = new OleDbDataAdapter("Select SecurityLevel from tblUserLogin " +
            "where UserName like '" + UserName + "' " +
            "and UserPassword like '" + UserPassword + "'", sqlConn);
            // Add your comments here
            DS = new dsUserLogin();
            // Add your comments here
            sqlDA.Fill(DS.tblUserLogin);
            // Add your comments here
            return DS;
            // test
        }
        public static dsUserLogin GetUserLogin(string Database)
        {
            dsUserLogin DS;
            //we call objects of the classes
            OleDbConnection sqlConn;
            OleDbDataAdapter sqlDA;
            //we use the methods to create messages and connect to the database
            sqlConn = new OleDbConnection("PROVIDER = Microsoft.ACE.OLEDB.12.0;" + "Data Source =" + Database);
            sqlDA = new OleDbDataAdapter("select * from tblUserLogin", sqlConn);
            //new object of the DS class
            DS = new dsUserLogin();
            // method of sqlDA class to fill the table
            sqlDA.Fill(DS.tblUserLogin);
            return DS;
        }

        //save personnell method
        public static bool SavePersonnel(string Database, string FirstName, string LastName, string Payrate,
            string StartDate, string EndDate)
        {
            bool recordSaved;
            OleDbTransaction myTransaction = null;
            try
            {
                //try catch that saves the data
                OleDbConnection conn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" +
                    "Data Source=" + Database);
                conn.Open();
                OleDbCommand command = conn.CreateCommand();
                string strSQL;
                //insert the file
                myTransaction = conn.BeginTransaction();
                command.Transaction = myTransaction;
                strSQL = "Insert into tblPersonnel " +
                    "(FirstName, LastName) values ('" + FirstName + "', '" + LastName + "')";
                command.CommandType = CommandType.Text;
                command.CommandText = strSQL;
                command.ExecuteNonQuery();
                //here is the string that gets inserted
                strSQL = "Update tblPersonnel " +
                    "Set PayRate=" + Payrate + ", " +
                    "StartDate='" + StartDate + "', " +
                    "EndDate='" + EndDate + "' " +
                    "Where ID=(Select Max(ID) From tblPersonnel)";
                command.CommandType = CommandType.Text;
                command.CommandText = strSQL;
                command.ExecuteNonQuery();
                myTransaction.Commit();
                conn.Close();
                recordSaved = true;
            }
            catch (Exception ex)
            {
                myTransaction.Rollback();
                recordSaved = false;
            }
            return recordSaved;
        }

        public static bool SaveUser(string Database, string UserName, string UserPassword, string SecurityLevel)
        {
            bool recordSaved;
            OleDbTransaction myTransaction = null;
            try
            {
                OleDbConnection conn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" +
                    "Data Source=" + Database);
                conn.Open();
                OleDbCommand command = conn.CreateCommand();
                string strSQL;
                myTransaction = conn.BeginTransaction();
                command.Transaction = myTransaction;
                strSQL = "Insert into tblUserLogin (UserName ,UserPassword ,SecurityLevel) values ('" + UserName + "','"
                    + UserPassword + "','"
                    + SecurityLevel + "' )";

                command.CommandType = CommandType.Text;
                command.CommandText = strSQL;
                command.ExecuteNonQuery();
                myTransaction.Commit();
                conn.Close();
                recordSaved = true;
            }
            catch (Exception ex)
            {
                myTransaction.Rollback();
                recordSaved = false;
            }
            return recordSaved;
        }
        public static dsUserActivity GetUserActivity(string Database)
        {
            dsUserActivity DS;
            //we call objects of the classes
            OleDbConnection sqlConn;
            OleDbDataAdapter sqlDA;
            //we use the methods to create messages and connect to the database
            sqlConn = new OleDbConnection("PROVIDER = Microsoft.ACE.OLEDB.12.0;" + "Data Source =" + Database);
            sqlDA = new OleDbDataAdapter("select * from tblUserActivity", sqlConn);
            //new object of the DS class
            DS = new dsUserActivity();
            // method of sqlDA class to fill the table
            sqlDA.Fill(DS.tblUserActivity);
            return DS;
        }
        public static dsPersonnel GetPersonnel(string Database, string strSearch)
        {
            dsPersonnel DS;
            //we call objects of the classes
            OleDbConnection sqlConn;
            OleDbDataAdapter sqlDA;
            //we use the methods to create messages and connect to the database
            sqlConn = new OleDbConnection("PROVIDER = Microsoft.ACE.OLEDB.12.0;" + "Data Source =" + Database);
            if (strSearch == null || strSearch.Trim() == "")
            {
                sqlDA = new OleDbDataAdapter("select * from tblPersonnel", sqlConn);
            }
            else
            {
                sqlDA = new OleDbDataAdapter("select * from tblPersonnel where LastName = '" + strSearch
                    + "'", sqlConn);
            }
            //new object of the DS class
            DS = new dsPersonnel();
            // method of sqlDA class to fill the table
            sqlDA.Fill(DS.tblPersonnel);
            return DS;
        }
        public static void SaveUserActivity(string Database, string FormAccessed)
        {
            OleDbConnection conn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" + "Data Source=" + Database);
            conn.Open();
            OleDbCommand command = conn.CreateCommand();
            string strSQL;
            strSQL = "Insert into tblUseractivity (UserIP, FormAccessed) values ('" + GetIP4Address() + "','" + FormAccessed + "')";
            command.CommandType = CommandType.Text;
            command.CommandText = strSQL;
            command.ExecuteNonQuery();
            conn.Close();
        }

        public static string GetIP4Address()
        {
            string IP4Address = string.Empty;
            foreach (IPAddress IPA in Dns.GetHostAddresses(HttpContext.Current.Request.UserHostAddress))
            {
                if (IPA.AddressFamily.ToString() == "InterNetwork")
                {
                    IP4Address = IPA.ToString();
                    break;
                }
            }
            if (IP4Address != string.Empty)
            {
                return IP4Address;
            }
            foreach (IPAddress IPA in Dns.GetHostAddresses(Dns.GetHostName()))
            {
                if (IPA.AddressFamily.ToString() == "InterNetwork")
                {
                    IP4Address = IPA.ToString();
                }
                break;
            }
            return IP4Address;
        }
    }
*/
    }
}