using System;
using System.Web.UI;
using Database;

namespace University.UOE
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        EMPLOYEES_TABLE em = new EMPLOYEES_TABLE();
        Encript encript = new Encript();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                string username = Session["e_username"].ToString();
                em = em.dataEMPLOYEES_TABLE(username);

                this.HiddenFieldUsername.Value = em.E_username;
                this.HiddenFieldPassword.Value = em.E_password;
                this.HiddenFieldFullname.Value = em.E_fullname;
                this.HiddenFieldPhone.Value = em.E_phone;
                this.HiddenFieldGender.Value = em.E_gender.ToString();
                this.HiddenFieldPicture.Value = em.E_picture;
                this.HiddenFieldDeid.Value = em.De_id;
                this.HiddenFieldDehead.Value = em.De_head.ToString();
                this.HiddenFieldActive.Value = em.E_active.ToString();
            }
        }

        protected void Button_Submit_Click(object sender, EventArgs e)
        {
            string username = this.HiddenFieldUsername.Value;
            string password = this.TextBoxOldPass.Text;
            string newPass = this.TextBoxNewPass.Text;
            string conNewPass = this.TextBoxConfirmNewPass.Text;
            password = encript.GetMD5Hash(password);

            if (password.Equals(this.HiddenFieldPassword.Value) && newPass.Equals(conNewPass))
            {
                newPass = encript.GetMD5Hash(newPass);
                if (em.changePassword(username, newPass))
                {
                    Button_Submit.Attributes.Add("OnClick","alert('Change password successful')");
                    Response.Redirect("Home.aspx");
                }
                else
                {                    
                    return;
                }
            }
            else
            {                
                return;
            }  
        }
    }
}