using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FastEats
{
    public partial class OrderOptions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Clear any existing order option stored in the session
                Session["orderOption"] = null;
            }
        }

        protected void btnPickup_Click(object sender, EventArgs e)
        {
            // Do nothing here as confirmation popup is handled on client-side
        }

        protected void btnDelivery_Click(object sender, EventArgs e)
        {
            // Do nothing here as confirmation popup is handled on client-side
        }

        protected void btnPlacePickupOrder_Click(object sender, EventArgs e)
        {
            // Store pickup option in session
            Session["orderOption"] = "pickup";
            // Redirect to PickupStatus.aspx
            Response.Redirect("PickupStatus.aspx");
        }

        protected void btnPlaceDeliveryOrder_Click(object sender, EventArgs e)
        {
            // Store delivery option in session
            Session["orderOption"] = "delivery";
            // Redirect to DeliveryTracking.aspx
            Response.Redirect("DeliveryTracking.aspx");
        }
    }
}
