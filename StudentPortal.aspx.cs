using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing.Printing;
using System.Data;
//Database function

namespace _32667019_Ass2
{
    public partial class StudentPortal : System.Web.UI.Page
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
            //create a DateTime object
            DateTime date = new DateTime(DateTime.Today.Year, DateTime.Today.Month, DateTime.Today.Day);
            // set date to the Calendar's current Date 
            date = Calendar1.SelectedDate;
            //If the selected is sunday, move on with one day
            if(date.DayOfWeek.ToString() == " Sunday")
            {
                date = date.AddDays(1);
                Calendar1.SelectedDate = date;
            }
            //set the calendae's date to the new date

            //displays the today's date - longDate
            LblDisplay.Text = date.ToLongDateString();

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void registerBtn_Click(object sender, EventArgs e)
        {
            
            //Takes you to the next Page
            Response.Redirect("registrationStudent.aspx");                
        }
      

        protected void forgotLBtn_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("informationData");
            Response.Redirect("forgotPassFrm.aspx");
            conn = new SqlConnection(connString);

            try
            {
                //connection open
                conn.Open();
                //updates the table
                string sql = $"UPDATE studentTable SET password = '{passwordTxtBox.Text}', WHERE username = {usernameTextBox.Text}";
                //command the table
                comm = new SqlCommand(sql, conn);
                int rowsAffected = comm.ExecuteNonQuery();
                //closes the connection
                conn.Close();
            }
            catch (SqlException error)
            {
                // Handle the error or display an error message
                errorLbl.Text = error.Message;
            }
        }

        protected void loginBtn_Click1(object sender, EventArgs e)
        {
            //declaretion of connection
            conn = new SqlConnection(connString);
            //open the connection and exception handler
            try
            {
                //opens the connection
                conn.Open();
                //string for connection to the table
                string sql = $"SELECT * FROM studentTable WHERE [Student Number] = {usernameTextBox.Text} AND Password = '{passwordTxtBox.Text}'";
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
                //redirect to the next page
                Response.Redirect("studentLogIn.aspx");
            }
            catch (SqlException error)
            {
                //displays the error
                errorLbl.Text = error.Message;
            }
        }
    }

}