using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database;
using System.Windows.Forms;
using System.Data;

namespace University.UOE
{
    public partial class StudentViewAppointment : System.Web.UI.Page
    {
        APPOINTMENT_TABLE ap = new APPOINTMENT_TABLE();
        AP_DETAIL_TABLE ap_detail = new AP_DETAIL_TABLE();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                string s_username = Session["s_username"].ToString();
                DataSet ds = new DataSet();
                ds = ap_detail.optionalAPP_DETAIL_TABLE(s_username, 1);

                this.DropDownListAppointment.DataSource = ds;
                this.DropDownListAppointment.DataTextField = "ap_id";
                this.DropDownListAppointment.DataValueField = "ap_id";
                this.DropDownListAppointment.DataBind();
            }
        }

        protected void DropDownListAppointment_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ap_id = Convert.ToInt32(this.DropDownListAppointment.SelectedItem.Value);            
            ap = ap.dataAPPOINTMENT_TABLE(ap_id);

            this.LabelTime.Text = ap.Ap_time;
            this.LabelDate.Text = ap.Ap_date.ToShortDateString();
            this.LabelRoom.Text = ap.Ap_room;
            this.LabelSubject.Text = ap.Sub_id;
        }       
    }
}