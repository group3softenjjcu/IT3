using System;
using System.Web.UI;
using Database;

namespace University.UOE
{
    public partial class AddMajor : System.Web.UI.Page
    {
        MAJOR_TABLE ma = new MAJOR_TABLE();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageCreate_Click(object sender, ImageClickEventArgs e)
        {
            string ma_id = this.TextID.Value;
            string ma_name = this.TextName.Value;
            string ma_description = this.TextDescription.Value;

            if (ma.insertMAJOR_TABLE(ma_id, ma_name, ma_description))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('Add new major successful');window.location='ViewMajor.aspx';</script>'");
            }
            else {                
                return;
            }
        }
    }
}