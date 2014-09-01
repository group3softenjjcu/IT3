using System;
using System.Web.UI;
using Database;

namespace University.UOE
{
    public partial class AddStudents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageCreate_Click(object sender, ImageClickEventArgs e)
        {
            STUDENTS_TABLE stu = new STUDENTS_TABLE();

            string username = this.TextUsername.Value;
            string fullname = this.TextName.Value;
            string password = "123456";
            string phone = this.TextPhone.Value;
            string email = this.TextEmail.Value;

            bool gender = Convert.ToBoolean(this.RadioButtonListGender.SelectedItem.Value);
            string picture = FileUploadImage.FileName;            

            FileUploadImage.SaveAs(Server.MapPath("upload/student/" + picture));
            bool active = this.CheckBoxActive.Checked;

            if (stu.insertSTUDENTS_TABLE(username, password, fullname, phone, gender, picture, active, email))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('Add new student successful');window.location='ViewStudents.aspx';</script>'");                                
            }            
        }
    }
}