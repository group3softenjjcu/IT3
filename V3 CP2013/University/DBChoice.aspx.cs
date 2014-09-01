using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database;

namespace University
{
    public partial class DBChoice : System.Web.UI.Page
    {
        ConnectToDatabase con = new ConnectToDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonConnect_Click(object sender, EventArgs e)
        {
            string value = DropDownListDB.SelectedItem.Value;
            if (value == "Choose...")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('Please select your database');</script>'");                
            }
            else if (value == "UOE_University") {
                con.DbConnection = "a_university";
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('Welcome to: "+value+"');window.location='UOE/StudentHome.aspx';</script>'");                
            }
            else {
                con.DbConnection = "b_university";
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('Welcome to: " + value + "');window.location='ABC/Home.aspx';</script>'");                
            }
        }
    }
}