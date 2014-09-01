using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database;
using System.Data;

namespace University.ABC
{
    public partial class ViewSubject : System.Web.UI.Page
    {
        SUBJECTS_TABLE sub = new SUBJECTS_TABLE();
        EMPLOYEES_TABLE em = new EMPLOYEES_TABLE();
        MAJOR_TABLE ma = new MAJOR_TABLE();
        private PagedDataSource paging = new PagedDataSource();
        private int itemperpage = 4;

        public int CurrentPageSubject
        {
            get
            {
                if (ViewState["CurrentPage"] == null)
                    return 0;
                else
                    return Convert.ToInt32(ViewState["CurrentPage"].ToString());
            }
            set
            {
                ViewState["CurrentPage"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                SubjectDB();
            }
        }

        public void SubjectDB()
        {            
            DataSet ds = new DataSet();
            ds = sub.listSUBJECTS_TABLE();

            paging.AllowPaging = true;
            paging.DataSource = ds.Tables[0].DefaultView;

            paging.PageSize = itemperpage;
            paging.CurrentPageIndex = CurrentPageSubject;

            this.ImageButtonNextDe.Enabled = !paging.IsLastPage;
            this.ImageButtonPreDe.Enabled = !paging.IsFirstPage;
            this.ImageButtonFirstDe.Enabled = !paging.IsFirstPage;
            this.ImageButtonLastDe.Enabled = !paging.IsLastPage;

            this.LabelStatusSubject.Text = (CurrentPageSubject + 1).ToString() + " / " + paging.PageCount.ToString();

            this.RepeaterSubject.DataSource = paging;
            this.RepeaterSubject.DataBind();            

        }

        protected void DropDownListSubject_SelectedIndexChanged(object sender, EventArgs e)
        {
            string value = this.DropDownListSubject.SelectedItem.Value;
            this.HiddenFieldSubject.Value = value;
            if (value == "Lecturer")
            {
                DataSet lecturer = em.listEMPByDepartment("F001");

                this.DropDownListFilter.DataSource = lecturer;
                this.DropDownListFilter.DataTextField = "e_fullname";
                this.DropDownListFilter.DataValueField = "e_username";
                this.DropDownListFilter.DataBind();
            }
            else {
                DataSet major = ma.listMAJOR_TABLE();

                this.DropDownListFilter.DataSource = major;
                this.DropDownListFilter.DataTextField = "ma_name";
                this.DropDownListFilter.DataValueField = "ma_id";
                this.DropDownListFilter.DataBind();
            }
        }

        protected void DropDownListFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.HiddenFieldSubject.Value == "Lecturer")
            {
                string e_username = this.DropDownListFilter.SelectedItem.Value;

                DataSet lecturer = sub.employeeSUBJECTS_TABLE(e_username);

                paging.AllowPaging = true;
                paging.DataSource = lecturer.Tables[0].DefaultView;

                paging.PageSize = itemperpage;
                paging.CurrentPageIndex = CurrentPageSubject;

                this.ImageButtonNextDe.Enabled = !paging.IsLastPage;
                this.ImageButtonPreDe.Enabled = !paging.IsFirstPage;
                this.ImageButtonFirstDe.Enabled = !paging.IsFirstPage;
                this.ImageButtonLastDe.Enabled = !paging.IsLastPage;

                this.LabelStatusSubject.Text = (CurrentPageSubject + 1).ToString() + " / " + paging.PageCount.ToString();

                this.RepeaterSubject.DataSource = paging;
                this.RepeaterSubject.DataBind();        
            }
            else {
                string ma_id = this.DropDownListFilter.SelectedItem.Value;

                DataSet major = sub.majorSUBJECTS_TABLE(ma_id);

                paging.AllowPaging = true;
                paging.DataSource = major.Tables[0].DefaultView;

                paging.PageSize = itemperpage;
                paging.CurrentPageIndex = CurrentPageSubject;

                this.ImageButtonNextDe.Enabled = !paging.IsLastPage;
                this.ImageButtonPreDe.Enabled = !paging.IsFirstPage;
                this.ImageButtonFirstDe.Enabled = !paging.IsFirstPage;
                this.ImageButtonLastDe.Enabled = !paging.IsLastPage;

                this.LabelStatusSubject.Text = (CurrentPageSubject + 1).ToString() + " / " + paging.PageCount.ToString();

                this.RepeaterSubject.DataSource = paging;
                this.RepeaterSubject.DataBind();        
            }
        }

        #region Subject Paging
        protected void ImageButtonFirstDe_Click(object sender, ImageClickEventArgs e)
        {
            CurrentPageSubject = 0;
            SubjectDB();
        }

        protected void ImageButtonPreDe_Click(object sender, ImageClickEventArgs e)
        {
            CurrentPageSubject--;
            SubjectDB();
        }

        protected void ImageButtonNextDe_Click(object sender, ImageClickEventArgs e)
        {
            CurrentPageSubject++;
            SubjectDB();
        }

        protected void ImageButtonLastDe_Click(object sender, ImageClickEventArgs e)
        {
            int Appointmentcount = CurrentPageSubject = sub.listSUBJECTS_TABLE().Tables[0].Rows.Count;
            if (Appointmentcount % 4 == 0)
                CurrentPageSubject = Appointmentcount / itemperpage - 1;
            else
                CurrentPageSubject = Appointmentcount / itemperpage;
            SubjectDB(); 
        }
        #endregion
    }
}