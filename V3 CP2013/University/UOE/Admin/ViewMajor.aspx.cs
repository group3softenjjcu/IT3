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
    public partial class ViewMajor : System.Web.UI.Page
    {
        MAJOR_TABLE ma = new MAJOR_TABLE();

        private PagedDataSource paging = new PagedDataSource();
        private int itemperpage = 4;

        public int CurrentPageDepartment
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
                MajorDB();
            }
        }

        public void MajorDB()
        {
            DataSet ds = new DataSet();
            ds = ma.listMAJOR_TABLE();

            paging.AllowPaging = true;
            paging.DataSource = ds.Tables[0].DefaultView;

            paging.PageSize = itemperpage;
            paging.CurrentPageIndex = CurrentPageDepartment;

            this.ImageButtonNextDe.Enabled = !paging.IsLastPage;
            this.ImageButtonPreDe.Enabled = !paging.IsFirstPage;
            this.ImageButtonFirstDe.Enabled = !paging.IsFirstPage;
            this.ImageButtonLastDe.Enabled = !paging.IsLastPage;

            this.LabelStatusMajor.Text = (CurrentPageDepartment + 1).ToString() + " / " + paging.PageCount.ToString();

            this.RepeaterMajor.DataSource = paging;
            this.RepeaterMajor.DataBind();            
        }

        #region Major Paging
        protected void ImageButtonFirstDe_Click(object sender, ImageClickEventArgs e)
        {
            CurrentPageDepartment = 0;
            MajorDB();
        }

        protected void ImageButtonPreDe_Click(object sender, ImageClickEventArgs e)
        {
            CurrentPageDepartment--;
            MajorDB();
        }

        protected void ImageButtonNextDe_Click(object sender, ImageClickEventArgs e)
        {
            CurrentPageDepartment++;
            MajorDB();
        }

        protected void ImageButtonLastDe_Click(object sender, ImageClickEventArgs e)
        {
            int Majorcount = CurrentPageDepartment = ma.listMAJOR_TABLE().Tables[0].Rows.Count;
            if (Majorcount % 4 == 0)
                CurrentPageDepartment = Majorcount / itemperpage - 1;
            else
                CurrentPageDepartment = Majorcount / itemperpage;
            MajorDB();
        }
        #endregion

    }
}