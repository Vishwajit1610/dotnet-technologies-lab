<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Leave.aspx.cs"
    Inherits="Practical_05_Academic_Leave_Management_System.Leave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Leave Application</title>
</head>

<body>
    <form id="form1" runat="server">

        <h2>Leave Application</h2>

        <asp:Label ID="lblWelcome" runat="server"></asp:Label>

        <br />
        <br />

        <asp:Label ID="lblName" runat="server"
            Text="Student Name:"></asp:Label>

        <br />

        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

        <br />
        <br />

        <asp:Label ID="lblDate" runat="server"
            Text="Selected Leave Date:"></asp:Label>

        <br />

        <asp:TextBox ID="txtSelectedDate" runat="server"
            ReadOnly="true"></asp:TextBox>

        <br />
        <br />

        <asp:Label ID="lblLeaveType" runat="server"
            Text="Leave Type:"></asp:Label>

        <br />

        <asp:DropDownList ID="ddlLeaveType" runat="server">
            <asp:ListItem Text="-- Select Leave Type --" Value="0"></asp:ListItem>
            <asp:ListItem Text="Casual Leave" Value="Casual"></asp:ListItem>
            <asp:ListItem Text="Sick Leave" Value="Sick"></asp:ListItem>
            <asp:ListItem Text="Emergency Leave" Value="Emergency"></asp:ListItem>
            <asp:ListItem Text="Personal Leave" Value="Personal"></asp:ListItem>
        </asp:DropDownList>

        <br />
        <br />

        <asp:Label ID="lblReason" runat="server"
            Text="Reason:"></asp:Label>

        <br />

        <asp:TextBox ID="txtReason" runat="server"
            TextMode="MultiLine"></asp:TextBox>

        <br />
        <br />

        <asp:Label ID="lblDays" runat="server"
            Text="Number of Days:"></asp:Label>

        <br />

        <asp:TextBox ID="txtDays" runat="server"></asp:TextBox>

        <br />
        <br />

        <asp:Button ID="btnApply" runat="server"
            Text="Apply Leave"
            OnClick="btnApply_Click" />

        &nbsp;

        <asp:Button ID="btnBack" runat="server"
            Text="Back"
            OnClick="btnBack_Click" />

        &nbsp;

        <asp:Button ID="btnLogout" runat="server"
            Text="Logout"
            OnClick="btnLogout_Click" />

        <br />
        <br />

        <asp:Label ID="lblMessage" runat="server"></asp:Label>

    </form>
</body>
</html>