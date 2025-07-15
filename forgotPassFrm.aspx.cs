using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing.Printing;
using System.Data;


namespace _32667019_Ass2
{
    public partial class forgotPassFrm : System.Web.UI.Page
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

        protected void changePassBtn_Click(object sender, EventArgs e)
        {
            /* //declare the cookie
             HttpCookie cookie = new HttpCookie("InformationData");
             //assign the cookie
             cookie["Student Number"] = stNumberTxtBox.Text;
             cookie["New Password"] = newPasswordTextBox.Text;
             cookie["Confirm Password"] = confirmPasswordTextBox.Text;*/

            //declare the connection
            conn = new SqlConnection(connString);

            //Excption thrown
            try
            {
                //connection opened
                conn.Open();

                //declare the string for table
                string sql = $"UPDATE studentTable SET Password = @Password, [Confirm Password] = @ConfirmPassword WHERE [StudentNumber] = @StudentNumber";
            }
            catch(SqlException error)
            {
                //displays the error message
                errorLbl.Text = error.Message;
            }

            //goes back to the login page
            Response.Redirect("StudentPortal.aspx");
        }
    }
}