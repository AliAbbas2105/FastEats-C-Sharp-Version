using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FastEats
{
    public partial class homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CheckoutButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("./payment.aspx");
        }
        protected void AddToCart_Click(object sender, EventArgs e)
        {
            var button = (Button)sender;
            string itemName = button.Attributes["data-item"];
            double itemPrice = Convert.ToDouble(button.Attributes["data-price"]);

            // Perform cart item addition logic here
        }
        protected void CheckDeal_Click(object sender, EventArgs e)
        {
            var button = (Button)sender;
            string itemName = button.Attributes["data-item"]; ;
            double itemPrice = Convert.ToDouble(button.Attributes["data-price"]);

        }
    }
}