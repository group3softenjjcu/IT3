using System;
using System.Web.UI;
using Database;

namespace University.ABC
{
    public partial class Login : System.Web.UI.Page
    {
        Encript encript = new Encript();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                this.TextBox_Username.Text = "";
                this.TextBox_Password.Text = "";
            }
        }

        protected void Button_Submit_Click(object sender, EventArgs e)
        {
            EMPLOYEES_TABLE em = new EMPLOYEES_TABLE();

            string username = this.TextBox_Username.Text.ToString();
            string password = this.TextBox_Password.Text.ToString();
            string email = this.TextBoxEmail.Text.ToString();
            string phone = this.TextBoxPhone.Text.ToString();

            password = encript.GetMD5Hash(password);

            if (username == "" || password == "")
            {
                Button_Submit.Attributes.Add("OnClick", "alert('Username and Password cannot be null!!!')");
                return;
            }
            else {
                if (em.checkAccount(username, password, phone, email))
                {
                    Session["e_username"] = username;
                    Session["e_password"] = password;
                    Session["successful"] = 1;
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('Sign in successful!!!!');window.location='Admin/Home.aspx';</script>'");                
                }
                else {
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('Sign in unsuccessful, please check your Username & Password again!!');</script>'"); 
                }
            }
        }        
    }
}