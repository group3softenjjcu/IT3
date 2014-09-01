using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database;

namespace University
{
    public partial class BookAppointment : System.Web.UI.Page
    {
        AP_DETAIL_TABLE detail = new AP_DETAIL_TABLE();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string username = Session["s_username"].ToString();
                int ap_id = Convert.ToInt32(Request.QueryString["appointment"].ToString());
                if (!detail.checkExistingAppointment(username, ap_id))
                {
                    if (detail.insertAP_DETAIL_TABLE(username, ap_id, true))
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('Book appointment successful');window.location='StudentViewProfile.aspx';</script>'");
                    }
                }
                else
                    //ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('You've already booked this appointment!!!!');window.location='ViewProfile.aspx';</script>'");
                    Response.Redirect("StudentViewProfile.aspx");
            }
        }
    }
}