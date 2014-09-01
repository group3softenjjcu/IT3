using System;
using System.Web.UI;
using Database;

namespace University.UOE
{
    public partial class ViewProfile : System.Web.UI.Page
    {
        EMPLOYEES_TABLE em = new EMPLOYEES_TABLE();
        DEPARTMENT_TABLE de = new DEPARTMENT_TABLE();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                string username = Session["e_username"].ToString();
                em = em.dataEMPLOYEES_TABLE(username);

                this.LabelUsername.Text = em.E_username.ToString();
                this.HiddenFieldPassword.Value = em.E_password.ToString();
                this.TextName.Value = em.E_fullname.ToString();
                this.TextPhone.Value = em.E_phone.ToString();
                this.ImageCurrentPhoto.ImageUrl = "upload/employee/" + em.E_picture.ToString();
                this.HiddenFieldGender.Value = em.E_gender.ToString();
                this.HiddenFieldImage.Value = em.E_picture.ToString();
                this.HiddenFieldDeID.Value = em.De_id.ToString();
                this.HiddenFieldActive.Value = em.E_active.ToString();
                this.CheckBoxHead.Checked = Convert.ToBoolean(em.De_head);
                de = de.dataDEPARTMENT_TABLE(this.HiddenFieldDeID.Value.ToString());
                this.LabelDepartment.Text = de.De_name;
                this.TextEmail.Value = em.E_email;
            }
        }

        protected void ImageButtonUpdate_Click(object sender, ImageClickEventArgs e)
        {
            string username = this.LabelUsername.Text;
            string password = this.HiddenFieldPassword.Value;
            string name = this.TextName.Value;
            string phone = this.TextPhone.Value;
            string image = this.HiddenFieldImage.Value;
            bool gender = Convert.ToBoolean(this.HiddenFieldGender.Value);
            if (this.FileUploadImage.FileName != "") {
                image = FileUploadImage.FileName;
                FileUploadImage.SaveAs(Server.MapPath("upload/employee/" + image));
            }
            string de_id = this.HiddenFieldDeID.Value;
            bool head = this.CheckBoxHead.Checked;
            bool active = Convert.ToBoolean(this.HiddenFieldActive.Value);
            string email = this.TextEmail.Value;

            if (em.updateEMPLOYEES_TABLE(username, password, name, phone, gender, image, de_id, head, active, email))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('Update profile successful!!');window.location='Home.aspx';</script>'");
            }
            else {                
                return;
            }
        }
    }
}