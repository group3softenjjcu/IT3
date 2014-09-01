using System;
using System.Web.UI;
using Database;

namespace University.UOE
{
    public partial class EditAppointment : System.Web.UI.Page
    {
        APPOINTMENT_TABLE ap = new APPOINTMENT_TABLE();
        SUBJECTS_TABLE sub = new SUBJECTS_TABLE();
        EMPLOYEES_TABLE em = new EMPLOYEES_TABLE();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                int ap_id = Convert.ToInt32(Request.QueryString["ap_id"].ToString());
                this.HiddenFieldID.Value = ap_id.ToString();
                ap = ap.dataAPPOINTMENT_TABLE(ap_id);

                this.LabelSubject.Text = ap.Sub_id.ToString();
                this.TextBoxDate.Text = ap.Ap_date.ToString("MM-dd-yyyy");
                this.LabelTime.Text = ap.Ap_time.ToString();
                this.LabelRoom.Text = ap.Ap_room.ToString();
                this.TextDescription.Value = ap.Ap_description.ToString();
            }
        }

        protected void ImageButtonCreate_Click(object sender, ImageClickEventArgs e)
        {
            int ap_id = Convert.ToInt32(this.HiddenFieldID.Value.ToString());
            DateTime date = Convert.ToDateTime(this.TextBoxDate.Text);
            string time = this.DropDownListTime.SelectedItem.Value;
            string room = this.DropDownListRoom.SelectedItem.Value;
            string description = this.TextDescription.Value;
            string sub_id = this.LabelSubject.Text;
            string e_username = Session["e_username"].ToString();

            if (ap.updateAPPOINTMENT_TABLE(ap_id, date, time, room, description, sub_id, e_username))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('Edit Appointment successful!!');window.location='ViewAppointment.aspx';</script>'");
            }
        }

        protected void CalendarDate_SelectionChanged(object sender, EventArgs e)
        {
            this.TextBoxDate.Text = CalendarDate.SelectedDate.ToString("MM-dd-yyyy");
        }
    }
}