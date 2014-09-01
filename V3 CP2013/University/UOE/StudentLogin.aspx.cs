using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database;

namespace University.UOE
{
    public partial class StudentLogin : System.Web.UI.Page
    {
        Encript encript = new Encript();
        STUDENTS_TABLE student = new STUDENTS_TABLE();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                this.TextBoxUserName.Text = "";
                this.TextBoxPassword.Text = "";
                this.TextBoxEmail.Text = "";
                this.TextBoxPhone.Text = "";
            }
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {                        
            string username = this.TextBoxUserName.Text;
            string password = this.TextBoxPassword.Text;
            string email = this.TextBoxEmail.Text;
            string phone = this.TextBoxPhone.Text;

            password = encript.GetMD5Hash(password);
            if (username == "" || password == "" || email == "" || phone == "") {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('You have to fill up all the text fields');window.location='StudentLogin.aspx';</script>'");                
            }
            else{
            {
                student = student.dataSTUDENTS_TABLE(username);                
                bool active = student.S_active;
                if (active)
                {
                    if (student.checkAccount(username,password,phone,email))
                    {
                        Session["s_username"] = username;
                        Session["s_password"] = password;
                        Session["successful"] = 1;
                        ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('Login successful, you can view your profile now...');window.location='StudentHome.aspx';</script>'");
                    }
                    else
                        ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('Login unsuccessful, please try again!!!');window.location='StudentLogin.aspx';</script>'");                
                }
                else
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('You account has been deactived or hasn't been registered yet, please contact administrator or student service!!!');window.location='StudentHome.aspx';</script>'");                
            }
            
             
            
        }
        }
    }
}