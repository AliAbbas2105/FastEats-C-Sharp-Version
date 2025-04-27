using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FastEats
{
    public partial class payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submitbtn_Click(object sender, EventArgs e)
        {
            // This method is called when the submit button is clicked
            // You can handle form submission logic here

            // Access form field values and process them
            string email = txtEmail.Text;
            string bankName = txtBankName.Text;
            string accountNumber = txtAccountNumber.Text;
            string message = txtMessage.Text;

            // Here you can perform any further processing, such as saving to a database or sending an email

            // For now, we'll redirect the user to another page after submission
            Response.Redirect("./OrderOptions.aspx");
        }
    }
}