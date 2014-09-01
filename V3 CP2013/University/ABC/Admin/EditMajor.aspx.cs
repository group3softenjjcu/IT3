using System;
using System.Web.UI;
using Database;

namespace University.ABC
{
    public partial class EditMajor : System.Web.UI.Page
    {
        MAJOR_TABLE ma = new MAJOR_TABLE();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                string ma_id = Request.QueryString["ma_id"].ToString();
                ma = ma.dataDEPARTMENT_TABLE(ma_id);

                this.LabelID.Text = ma.Ma_id;
                this.TextName.Value = ma.Ma_name;
                this.TextDescription.Value = ma.Ma_description;
            }
        }

        protected void ImageUpdate_Click(object sender, ImageClickEventArgs e)
        {
            string ma_id = this.LabelID.Text;
            string name = this.TextName.Value;
            string description = this.TextDescription.Value;

            if (ma.updateMAJOR_TABLE(ma_id, name, description))
            {                
                Response.Redirect("ViewMajor.aspx");
            }
            else {              
                return;
            }
        }
    }
}