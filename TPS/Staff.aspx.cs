using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPS
{
    public partial class StaffPortal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnAddStaff.Attributes.Add("onclick", "return false;");
            //how do we get btnAddStaff to work on click after the validation?
        }

        protected void btnAddStaff_Click(object sender, EventArgs e)
        {

        }
    }
}