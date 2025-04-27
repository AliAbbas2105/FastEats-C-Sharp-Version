using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FastEats
{
    public partial class PickupStatus : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set the initial progress to 0%
                hiddenFieldProgress.Value = "0";

                // Call the JavaScript function to update progress
                ScriptManager.RegisterStartupScript(this, GetType(), "UpdateProgress", "updateProgress(0);", true);

                // Start a timer to update progress every 4 seconds
                System.Timers.Timer timer = new System.Timers.Timer(4000);
                timer.Elapsed += TimerElapsed;
                timer.AutoReset = true;
                timer.Enabled = true;
            }
        }

        private void TimerElapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            // Increment progress by 50% every 4 seconds until it reaches 100%
            int currentProgress = int.Parse(hiddenFieldProgress.Value);
            if (currentProgress < 2)
            {
                currentProgress++;
                hiddenFieldProgress.Value = currentProgress.ToString();

                // Call the JavaScript function to update progress
                ScriptManager.RegisterStartupScript(this, GetType(), "UpdateProgress", $"updateProgress({currentProgress});", true);
            }
            else
            {
                // Progress has reached 100%, stop the timer
                ((System.Timers.Timer)sender).Stop();
            }
        }
    }
}
