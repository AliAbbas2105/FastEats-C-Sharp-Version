using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FastEats
{
    public partial class DeliveryTracking : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hiddenFieldProgress.Value = "0"; // Initialize progress
                ScriptManager.RegisterStartupScript(this, GetType(), "UpdateProgress", "updateProgress(0);", true); // Update progress bar

                // Start a timer to update progress every 4 seconds
                System.Timers.Timer timer = new System.Timers.Timer(4000);
                timer.Elapsed += TimerElapsed;
                timer.AutoReset = true;
                timer.Enabled = true;
            }
        }

        private void TimerElapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            int currentProgress = int.Parse(hiddenFieldProgress.Value);
            if (currentProgress < 100)
            {
                currentProgress += 25; // Increment progress
                hiddenFieldProgress.Value = currentProgress.ToString(); // Update hidden field
                ScriptManager.RegisterStartupScript(this, GetType(), "UpdateProgress", $"updateProgress({currentProgress});", true); // Update progress bar
            }
            else
            {
                // Progress has reached 100%, stop the timer
                ((System.Timers.Timer)sender).Stop();
            }
        }
    }
}
