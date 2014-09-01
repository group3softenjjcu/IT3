using System;
using System.Web.UI;
using Database;

namespace University.UOE
{
    public partial class DeleteAppointment : System.Web.UI.Page
    {
        APPOINTMENT_TABLE ap = new APPOINTMENT_TABLE();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                int ap_id = Convert.ToInt32(Request.QueryString["ap_id"].ToString());                
                if (ap.deleteAPPOINTMENT_TABLE(ap_id))
                   Response.Redirect("ViewAppointment.aspx");                
            }
        }
    }
}