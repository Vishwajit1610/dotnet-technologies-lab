<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Event-Registration-Form.aspx.cs" Inherits="Practical_04_Event_Registration_Portal.Event_Registration_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 136px;
            height: 94px;
        }
        #checkBoxTerms {
            height: 20px;
        }
        .auto-style6 {
            width: 341px;
            height: 94px;
        }
        .auto-style9 {
            width: 136px;
            height: 61px;
        }
        .auto-style10 {
            width: 341px;
            height: 61px;
        }
        .auto-style11 {
            height: 61px;
        }
        .auto-style12 {
            width: 136px;
            height: 35px;
        }
        .auto-style13 {
            width: 341px;
            height: 35px;
        }
        .auto-style14 {
            height: 35px;
        }
        .auto-style15 {
            height: 94px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Event Registration Portal</h2>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Enter your name</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label2" runat="server" Text="Enrollment No."></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtEnroll" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEnroll" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Enter your enrollment no.</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label3" runat="server" Text="Department"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:DropDownList ID="dropDownDepart" runat="server">
                        <asp:ListItem Text="Select a department" Value=""></asp:ListItem>
                        <asp:ListItem Text="CSE - Core" Value="CSE - Core"></asp:ListItem>
                        <asp:ListItem Text="CSE - AI / ML" Value="CSE - AI / ML"></asp:ListItem>
                        <asp:ListItem Text="CSE - AI / DS" Value="CSE - AI / DS"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label5" runat="server" Text="Mobile No."></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtMobile" runat="server" TextMode="Number" MaxLength="10"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMobile" ErrorMessage="Enter a valid (10 digits) mobile number" ForeColor="#CC0000" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:RadioButton ID="radioMale" runat="server" GroupName="radioGender" Text="Male" />
                    <asp:RadioButton ID="radioFemale" runat="server" GroupName="radioGender" Text="Female" />
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label9" runat="server" Text="Tech Stack"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:CheckBox ID="chkPython" runat="server" Text="Python" />
&nbsp;&nbsp;
                    <asp:CheckBox ID="chkJavaScript" runat="server" Text="JavaScript" />
&nbsp;&nbsp;
                    <asp:CheckBox ID="chkReact" runat="server" Text="React JS" />
                    <br />
                    <asp:CheckBox ID="chkCSharp" runat="server" Text="C#" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="chkRust" runat="server" Text="Rust" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="chkNode" runat="server" Text="Node JS" />
                </td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Events"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:ListBox ID="listBoxEvent" runat="server" SelectionMode="Multiple">
                        <asp:ListItem Text="Hackathon" Value="Hackathon"></asp:ListItem>
                        <asp:ListItem Text="Web Development Workshop" Value="Web Development Workshop"></asp:ListItem>
                        <asp:ListItem Text="AI / ML Workshop" Value="AI / ML Workshop"></asp:ListItem>
                        <asp:ListItem Text="Cyber Security Workshop" Value="Cyber Security Workshop"></asp:ListItem>
                    </asp:ListBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="listBoxEvent" ErrorMessage="Select one or more events" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label8" runat="server" Text="Terms"></asp:Label>
                </td>

                <td class="auto-style13">
                    <asp:CheckBox ID="chkTerms" runat="server"
                        Text="I agree to the Terms and Conditions" />
                </td>

                <td class="auto-style14"></td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="Button1_Click" Text="Submit" />
    </form>
</body>
</html>
