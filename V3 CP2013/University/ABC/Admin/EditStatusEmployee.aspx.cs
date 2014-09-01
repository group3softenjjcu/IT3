using System;
using System.Web.UI;
using Database;

namespace University.ABC
{
    public partial class EditStatusEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EMPLOYEES_TABLE em = new EMPLOYEES_TABLE();
            if (!Page.IsPostBack) {
                string e_username = Request.QueryString["e_username"].ToString();

                em = em.dataEMPLOYEES_TABLE(e_username);
                string password = em.E_password;
                string fullname = em.E_fullname;
                string phone = em.E_phone;
                bool gender = Convert.ToBoolean(em.E_gender);
                string picture = em.E_picture;
                string de_id = em.De_id;
                bool de_head = Convert.ToBoolean(em.De_head);
                bool active = Convert.ToBoolean(em.E_active);
                string email = em.E_email;
                if (active)
                    active = false;
                else
                    active = true;
                if (em.updateEMPLOYEES_TABLE(e_username, password, fullname, phone, gender, picture, de_id, de_head, active, email))
                {
                    Response.Redirect("ViewEmployees.aspx");
                }
                else
                {
                    return;
                }
                    

            }
        }
    }
}