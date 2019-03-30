using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPS
{
    public partial class Contracts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //gridview control function, it simply is an event handler that checks to see if a button was press in that row and then handles it
        protected void grdViewStaffRequests_RowCommand(object sender, GridViewCommandEventArgs e)
        {
                if (e.CommandName == "approveRequest")
                {
                    //the command name can be set in the properties of the column for the gridview
                    Console.WriteLine("Testworked");
                }
                if (e.CommandName == "denyRequest")
                {
                    Console.WriteLine("testworkeddenied");
                }

        }
    }
}