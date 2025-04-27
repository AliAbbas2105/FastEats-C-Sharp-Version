using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Microsoft.Ajax.Utilities;
using System.ComponentModel.DataAnnotations.Schema;

namespace FastEats
{
    public partial class login : System.Web.UI.Page
    {
        // Connection string for your database
        private string connectionString = "data source=DESKTOP-1VBPPVG\\SQLEXPRESS; initial catalog=fasteats; integrated security=true; ";

        protected void Page_Load(object sender, EventArgs e)
        {
            // Code to execute when the page loads
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string username = loginUsername.Text;
            string password = loginPassword.Text;

            // Validate the user credentials using the stored procedure
            if (ValidateUser(username, password))
            {
                // Successful login, redirect to homepage
                Response.Redirect("homepage.aspx");
            }
            else
            {
                // Invalid username or password, show error message
                errorMessage.Text = "Invalid username or password";
                errorMessage.Visible = true;
            }
        }

        protected void SignupButton_Click(object sender, EventArgs e)
        {
            string username = signupUsername.Text;
            string email = signupEmail.Text;
            string password = signupPassword.Text;

            // Check if the username already exists using the stored procedure
            if (CheckUsernameExists(username))
            {
                // Username already exists, show error message
                errorMessage.Text = "Username already exists";
                errorMessage.Visible = true;
            }
            else
            {
                // Username does not exist, insert the new user data into the database
                if (InsertUser(username, email, password))
                {
                    // User successfully added to the database
                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    // Error occurred while adding user to the database, show error message
                    errorMessage.Text = "An error occurred while processing your request. Please try again later.";
                    errorMessage.Visible = true;
                }
            }
        }


        // Method to validate user credentials using stored procedure
        private bool ValidateUser(string username, string password)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("ValidateUser", connection);
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@Password", password);
                int count = (int)command.ExecuteScalar();
                return count > 0;
            }
        }

        // Method to check if username already exists using stored procedure
        private bool CheckUsernameExists(string username)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("CheckUsernameExists", connection);
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@Username", username);
                int count = (int)command.ExecuteScalar();
                return count > 0;
            }
        }

        // Method to insert user data into the database
        private bool InsertUser(string username, string email, string password)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand command = new SqlCommand("INSERT INTO [User] (Username, Email, Password) VALUES (@Username, @Email, @Password)", connection);
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Password", password);
                    int rowsAffected = command.ExecuteNonQuery();
                    return rowsAffected > 0;
                }
            }
            catch (Exception ex)
            {
                // Log the exception or handle it as per your application's requirement
                return false;
            }
        }

    }
}
