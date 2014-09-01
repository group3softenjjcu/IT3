using System;
using System.Web.UI;
using Database;
using System.Data;

namespace University.UOE
{
    public partial class AddSubject : System.Web.UI.Page
    {
        SUBJECTS_TABLE sub = new SUBJECTS_TABLE();
        MAJOR_TABLE ma = new MAJOR_TABLE();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                EMPLOYEES_TABLE em = new EMPLOYEES_TABLE();
                DataSet lecturer = em.listEMPByDepartment("F001");

                this.DropDownListLecturer.DataSource = lecturer;
                this.DropDownListLecturer.DataTextField = "e_fullname";
                this.DropDownListLecturer.DataValueField = "e_username";
                this.DropDownListLecturer.DataBind();
                MajorDB();
            }
        }

        public void MajorDB() {
            DataSet major = ma.listMAJOR_TABLE();

            this.DropDownListMajor.DataSource = major;
            this.DropDownListMajor.DataTextField = "ma_name";
            this.DropDownListMajor.DataValueField = "ma_id";
            this.DropDownListMajor.DataBind();
        }

        protected void ImageCreate_Click(object sender, ImageClickEventArgs e)
        {
            string sub_id = this.TextID.Value;
            string sub_name = this.TextName.Value;
            string sub_description = this.TextDescription.Value;

            string e_username = this.DropDownListLecturer.SelectedItem.Value;
            string ma_id = this.DropDownListMajor.SelectedItem.Value;

            if (sub.insertSUBJECTS_TABLE(sub_id, sub_name, sub_description, e_username, ma_id))
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script type='text/javascript'>alert('Add new Subject successful!!');window.location='ViewSubject.aspx';</script>'");
        }

        
    }
}