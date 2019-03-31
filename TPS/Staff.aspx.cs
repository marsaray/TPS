using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static TPS.App_Code.clsDataLayer;


namespace TPS
{
    public partial class Staff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //btnAddStaff.Attributes.Add("onclick", "return false;");
            //how do we get btnAddStaff to work on click after the validation?
            dsStaff myDataSet = new dsStaff();
            myDataSet = clsDataLayer.GetStaff(Server.MapPath("TPS.accdb"));
            //set the datagrid to datasource based on table
            grdViewStaff.DataSource = myDataSet.Tables["tblStaffMember"];
            //binds the datagrid
            grdViewStaff.DataBind();
        }

        protected void btnAddStaff_Click(object sender, EventArgs e)
        {
            error.Text = "TEST";
            string FirstName = txtFirstName.Text;
            string LastName = txtLastName.Text;
            string EduLevel = drpEduLevel.SelectedValue;
            string Experience = txtExperience.Text;
            string Salary = txtSalary.Text;
            if (SaveStaff(Server.MapPath("TPS.accdb"),FirstName,LastName,EduLevel,Experience,Salary))
            {
                error.Text = "Success";
            }
            else
            {
                error.Text = "Fail";
            }
        }
    }
}