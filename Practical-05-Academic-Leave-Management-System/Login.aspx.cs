using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical_05_Academic_Leave_Management_System
{
    public partial class Login : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string userID = txtUserID.Text.Trim();
            string password = txtPassword.Text;

            if (userID == "student" && password == "1234")
            {
                Session["UserID"] = userID;

                if (chkRememberMe.Checked)
                {
                    HttpCookie cookie = new HttpCookie("UserID", userID);
                    cookie.Expires = DateTime.Now.AddDays(7);
                    Response.Cookies.Add(cookie);
                }

                Response.Redirect("Default.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid User ID or Password.";
            }
        }
    }
}