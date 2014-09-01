using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPSnippets.FaceBookAPI;
using System.Web.Script.Serialization;
using System.Collections.Generic;

namespace University.UOE
{
    public partial class CS : System.Web.UI.Page
    {

        protected void Login(object sender, EventArgs e)
        {
            FaceBookConnect.Authorize("user_photos,email", Request.Url.AbsoluteUri.Split('?')[0]);
        }
        protected void Logout(object sender, EventArgs e)
        {
            FaceBookConnect.Logout(Request.QueryString["code"]);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            FaceBookConnect.API_Key = "822621497772347";
            FaceBookConnect.API_Secret = "13e5dc3e354ba9516eb261566373f0da";

            if (!IsPostBack)
            {
                if (Request.QueryString["logout"] == "true")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('User has logged out from Facebook')", true);
                    return;
                }

                if (Request.QueryString["error"] == "access_denied")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('User has denied access.')", true);
                    return;
                }

                string code = Request.QueryString["code"];
                if (!string.IsNullOrEmpty(code))
                {
                    string data = FaceBookConnect.Fetch(code, "me");
                    FaceBookUser faceBookUser = new JavaScriptSerializer().Deserialize<FaceBookUser>(data);
                    faceBookUser.PictureUrl = string.Format("https://graph.facebook.com/{0}/picture", faceBookUser.Id);
                    pnlFaceBookUser.Visible = true;
                    lblId.Text = faceBookUser.Id;
                    lblUserName.Text = faceBookUser.UserName;
                    lblName.Text = faceBookUser.Name;
                    lblEmail.Text = faceBookUser.Email;
                    ProfileImage.ImageUrl = faceBookUser.PictureUrl;
                    btnLogin.Enabled = false;
                }
            }
        }
    }

    public class FaceBookUser
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public string UserName { get; set; }
        public string PictureUrl { get; set; }
        public string Email { get; set; }
    }
    
}