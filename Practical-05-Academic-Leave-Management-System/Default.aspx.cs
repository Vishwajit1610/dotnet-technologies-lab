using System;
using System.Web;

namespace Practical_05_Academic_Leave_Management_System
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserID"] == null)
                {
                    HttpCookie cookie = Request.Cookies["UserID"];

                    if (cookie != null)
                    {
                        Session["UserID"] = cookie.Value;
                    }
                    else
                    {
                        Response.Redirect("Login.aspx");
                        return;
                    }
                }

                lblWelcome.Text =
                    "Welcome, " + Session["UserID"].ToString();
            }
        }

        protected void calLeave_SelectionChanged(object sender, EventArgs e)
        {
            DateTime selectedDate = calLeave.SelectedDate;

            lblSelectedDate.Text =
                "Selected Date: " +
                selectedDate.ToString("dd/MM/yyyy");

            Session["Leave"] = selectedDate;
        }

        protected void btnLeave_Click(object sender, EventArgs e)
        {
            Response.Redirect("Leave.aspx");
        }
    }
}