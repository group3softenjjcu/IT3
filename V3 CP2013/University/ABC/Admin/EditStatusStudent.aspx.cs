using System;
using System.Web.UI;
using Database;

namespace University.ABC
{
    public partial class EditStatusStudent : System.Web.UI.Page
    {
        STUDENTS_TABLE student = new STUDENTS_TABLE();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                string s_username = Request.QueryString["s_username"].ToString();
                student = student.dataSTUDENTS_TABLE(s_username);

                string password = student.S_password.ToString();
                string fullname = student.S_fullname.ToString();
                string phone = student.S_phone.ToString();
                bool gender = Convert.ToBoolean(student.S_gender.ToString());
                string picture = student.S_picture.ToString();
                bool active = Convert.ToBoolean(student.S_active.ToString());
                string email = student.S_Email.ToString();
                if (active)
                    active = false;
                else
                    active = true;
                if (student.updateSTUDENT_TABLE(s_username, password, fullname, phone, gender, picture, active, email))
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('Update state successful');window.location='ViewStudents.aspx';</script>'");                
            }
        }
    }
}