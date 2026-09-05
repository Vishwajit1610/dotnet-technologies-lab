using System;

namespace Practical_05_Academic_Leave_Management_System
{
    public partial class Leave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserID"] == null)
                {
                    Response.Redirect("Login.aspx");
                    return;
                }

                lblWelcome.Text =
                    "Welcome, " + Session["UserID"].ToString();

                if (Session["Leave"] != null)
                {
                    DateTime leaveDate = (DateTime)Session["Leave"];

                    txtSelectedDate.Text =
                        leaveDate.ToString("dd/MM/yyyy");
                }
            }
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            if (ddlLeaveType.SelectedValue == "0")
            {
                lblMessage.Text = "Please select a leave type.";
                return;
            }

            if (string.IsNullOrWhiteSpace(txtReason.Text))
            {
                lblMessage.Text = "Please enter a reason.";
                return;
            }

            if (!int.TryParse(txtDays.Text, out int days) || days <= 0)
            {
                lblMessage.Text = "Please enter a valid number of days.";
                return;
            }

            lblMessage.Text =
                $"Leave applied successfully for {days} day(s).";
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}