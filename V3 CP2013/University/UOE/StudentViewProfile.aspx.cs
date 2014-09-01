using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database;
using System.Text;

namespace University.UOE
{
    public partial class StudentViewProfile : System.Web.UI.Page
    {
        STUDENTS_TABLE student = new STUDENTS_TABLE();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                if (Session["s_username"] == null)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('You have to login first!!!!');window.location='StudentLogin.aspx';</script>'");
                }                                 
            }
        }

        public void callMessage(string message) {
            StringBuilder text = new StringBuilder();
            text.Append("<script type=\"text/javascript\">");
            text.Append("alert('"+message+"')" + "} </");
            text.Append("script>");
        }
    }
}