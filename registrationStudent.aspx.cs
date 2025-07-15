using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing.Printing;
using System.Data; // DataBAse Function

namespace _32667019_Ass2
{
    public partial class registrationStudent : System.Web.UI.Page
    {
        //declare publicly
        public static SqlConnection conn;
        public static SqlCommand comm;
        public static SqlDataAdapter adapter;
        public static DataSet ds;


        //declare the connection string publicly 
        public static string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\32667019_Ass2\App_Data\studentData.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterBtn_Click(object sender, EventArgs e)
        {
            //declre to connect to database
            conn = new SqlConnection(connString);
            //check the state of connection

            try
            {
                //open the connection of database
                conn.Open();
                //declare the sql to open database and insert new values
                string sql = $"INSERT INTO studentTable ([Student Number], [First Name], [Last Name], Password, [Confirm Password]) VALUES ({usernameTxtBox.Text}, '{nameTextBox.Text}', '{surnameTextBox.Text}', '{passwordTextBox.Text}', '{comfirmPasswordTextBox.Text}')";
                //commands the sql and connection
                comm = new SqlCommand(sql, conn);
                //returns the values
                comm.ExecuteNonQuery();
             
                
               
                
                //closes the connection
                conn.Close();
                //goes to login Page
                Response.Redirect("StudentPortal.aspx");

            }
            catch (SqlException error)
            {
                //displays the error message
                errorLbl.Text = error.Message;
            }


        }
        public void load()
        {
            //declaretion of connection
            conn = new SqlConnection(connString);
            //open the connection and exception handler
            try
            {
                //opens the connection
                conn.Open();
                //string for connection to the table
                string sql = $"SELECT * FROM studentTable";
                //command the sql and connection string
                comm = new SqlCommand(sql, conn);
                //adapter and DataSet Declaration
                adapter = new SqlDataAdapter();
                ds = new DataSet();
                //return the selected values
                adapter.SelectCommand = comm;
                adapter.Fill(ds);
                //closes the table if the correct data is matched
                conn.Close();
                
                
            }
            catch (SqlException error)
            {
                //displays the error
                errorLbl.Text = error.Message;
            }
        }

        protected void maleRd_CheckedChanged(object sender, EventArgs e)
        {
            //deactivate the femaleRd
            femaleRd.Checked = false;
        }

        protected void femaleRd_CheckedChanged(object sender, EventArgs e)
        {
            //deactivate the maleRd
            maleRd.Checked = false;
        }
    }
}