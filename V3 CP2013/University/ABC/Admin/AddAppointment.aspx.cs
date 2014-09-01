﻿using System;
using System.Web.UI;
using Database;
using System.Data;

namespace University.ABC
{
    public partial class AddAppointment : System.Web.UI.Page
    {
        SUBJECTS_TABLE sub = new SUBJECTS_TABLE();
        APPOINTMENT_TABLE ap = new APPOINTMENT_TABLE();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                string e_username = Session["e_username"].ToString();
                this.CalendarDate.SelectedDate = DateTime.Now;
                if (e_username != "")
                {
                    EMPLOYEES_TABLE em = new EMPLOYEES_TABLE();

                    DataSet subjectByEmployee = sub.employeeSUBJECTS_TABLE(e_username);

                    this.DropDownListSubject.DataSource = subjectByEmployee;
                    this.DropDownListSubject.DataTextField = "sub_name";
                    this.DropDownListSubject.DataValueField = "sub_id";
                    this.DropDownListSubject.DataBind();
                }
                else
                    Response.Redirect("../Login.aspx");
            }
        }

        protected void ImageCreate_Click(object sender, ImageClickEventArgs e)
        {
            DateTime date = Convert.ToDateTime(this.TextBoxDate.Text);
            DateTime now = DateTime.Now;
            if (date.Date < now.Date)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('Appointment date must be > than today');</script>'");
                return;
            }
            string time = this.DropDownListTime.SelectedItem.Value;
            string room = this.DropDownListRoom.SelectedItem.Value;
            string description = this.TextDescription.Value;
            string sub_id = this.DropDownListSubject.SelectedItem.Value;
            string e_username = Session["e_username"].ToString();

            if (ap.insertAPPOINTMENT_TABLE(date, time, room, description, sub_id, e_username))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('Create new appointment successful');window.location='ViewAppointment.aspx';</script>'");                
            }
        }

        protected void CalendarDate_SelectionChanged(object sender, EventArgs e)
        {
            this.TextBoxDate.Text = CalendarDate.SelectedDate.ToString("MM-dd-yyyy");
        }
    }
}