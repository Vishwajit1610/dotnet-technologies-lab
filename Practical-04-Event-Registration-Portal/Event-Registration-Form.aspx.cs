using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical_04_Event_Registration_Portal
{
    public partial class Event_Registration_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }

            if (!chkTerms.Checked)
            {
                Response.Write("Please accept the Terms and Conditions.");
                return;
            }

            string name = txtName.Text;
            string enrollment = txtEnroll.Text;
            string department = dropDownDepart.SelectedValue;
            string email = txtEmail.Text;
            string mobile = txtMobile.Text;

            string gender = "";

            if (radioMale.Checked)
            {
                gender = "Male";
            }
            else if (radioFemale.Checked)
            {
                gender = "Female";
            }

            string techStack = "";

            if (chkPython.Checked)
                techStack += "Python, ";

            if (chkJavaScript.Checked)
                techStack += "JavaScript, ";

            if (chkReact.Checked)
                techStack += "React JS, ";

            if (chkCSharp.Checked)
                techStack += "C#, ";

            if (chkRust.Checked)
                techStack += "Rust, ";

            if (chkNode.Checked)
                techStack += "Node JS, ";

            string events = "";

            foreach (ListItem item in listBoxEvent.Items)
            {
                if (item.Selected)
                {
                    events += item.Text + ", ";
                }
            }

            Response.Write("<h2>Registration Successful!</h2>");
            Response.Write("Name: " + name + "<br/>");
            Response.Write("Enrollment: " + enrollment + "<br/>");
            Response.Write("Department: " + department + "<br/>");
            Response.Write("Email: " + email + "<br/>");
            Response.Write("Mobile: " + mobile + "<br/>");
            Response.Write("Gender: " + gender + "<br/>");
            Response.Write("Tech Stack: " + techStack + "<br/>");
            Response.Write("Events: " + events);
        }

    }
}