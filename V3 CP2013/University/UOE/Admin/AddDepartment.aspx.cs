using System;
using System.Web.UI;
using Database;

namespace University.UOE
{
    public partial class AddDepartment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageCreate_Click(object sender, ImageClickEventArgs e)
        {
            DEPARTMENT_TABLE de = new DEPARTMENT_TABLE();
            string de_id = this.TextID.Value;
            string de_name = this.TextName.Value;
            string de_description = this.TextDescription.Value;

            if (de.insertDepartment(de_id, de_name, de_description))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('Add new department successful!!');window.location='ViewDepartment.aspx';</script>'");
            }
        }
    }
}