using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database;
using System.Data;

namespace University.UOE
{
    public partial class ViewEmployees : System.Web.UI.Page
    {
        EMPLOYEES_TABLE em = new EMPLOYEES_TABLE();
        DEPARTMENT_TABLE de = new DEPARTMENT_TABLE();
        private PagedDataSource paging = new PagedDataSource();
        private int itemperpage = 4;

        public int CurrentPageEmployee
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
                EmployeeDB();
                listDepartment();
            }
        }

        public void listDepartment() {
            DataSet department = de.listDEPARTMENT_TABLE();
            this.DropDownListFilter.DataSource = department;
            this.DropDownListFilter.DataTextField = "de_name";
            this.DropDownListFilter.DataValueField = "de_id";
            this.DropDownListFilter.DataBind();
        }

        public void EmployeeDB()
        {
            DataSet ds = new DataSet();
            ds = em.listEMPLOYEES_TABLE();

            paging.AllowPaging = true;
            paging.DataSource = ds.Tables[0].DefaultView;

            paging.PageSize = itemperpage;
            paging.CurrentPageIndex = CurrentPageEmployee;

            this.ImageButtonNextStudent.Enabled = !paging.IsLastPage;
            this.ImageButtonPreStudent.Enabled = !paging.IsFirstPage;
            this.ImageButtonFirstStudent.Enabled = !paging.IsFirstPage;
            this.ImageButtonLastStudent.Enabled = !paging.IsLastPage;

            this.LabelStatusEmployee.Text = (CurrentPageEmployee + 1).ToString() + " / " + paging.PageCount.ToString();

            this.RepeaterEmployee.DataSource = paging;
            this.RepeaterEmployee.DataBind();
        }

        #region Employee Paging
        protected void ImageButtonFirstStudent_Click(object sender, ImageClickEventArgs e)
        {
            CurrentPageEmployee = 0;
            EmployeeDB();
        }

        protected void ImageButtonPreStudent_Click(object sender, ImageClickEventArgs e)
        {
            CurrentPageEmployee--;
            EmployeeDB();
        }

        protected void ImageButtonNextStudent_Click(object sender, ImageClickEventArgs e)
        {
            CurrentPageEmployee++;
            EmployeeDB();
        }

        protected void ImageButtonLastStudent_Click(object sender, ImageClickEventArgs e)
        {
            int Employeecount = CurrentPageEmployee = em.listEMPLOYEES_TABLE().Tables[0].Rows.Count;
            if (Employeecount % 4 == 0)
                CurrentPageEmployee = Employeecount / itemperpage - 1;
            else
                CurrentPageEmployee = Employeecount / itemperpage;
            EmployeeDB();
        }
        #endregion

        protected void DropDownListFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            string de_id = this.DropDownListFilter.SelectedItem.Value;

            DataSet department = em.listEMPByDepartment(de_id);

            paging.AllowPaging = true;
            paging.DataSource = department.Tables[0].DefaultView;

            paging.PageSize = itemperpage;
            paging.CurrentPageIndex = CurrentPageEmployee;

            this.ImageButtonNextStudent.Enabled = !paging.IsLastPage;
            this.ImageButtonPreStudent.Enabled = !paging.IsFirstPage;
            this.ImageButtonFirstStudent.Enabled = !paging.IsFirstPage;
            this.ImageButtonLastStudent.Enabled = !paging.IsLastPage;

            this.LabelStatusEmployee.Text = (CurrentPageEmployee + 1).ToString() + " / " + paging.PageCount.ToString();

            this.RepeaterEmployee.DataSource = paging;
            this.RepeaterEmployee.DataBind();    
        }

    }
}