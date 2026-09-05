<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs"
    Inherits="Practical_05_Academic_Leave_Management_System.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Academic Calendar</title>
</head>

<body>
    <form id="form1" runat="server">

        <h2>Academic Leave Management System</h2>

        <asp:Label ID="lblWelcome" runat="server"></asp:Label>

        <br />
        <br />

        <asp:Calendar ID="calLeave" runat="server"
            OnSelectionChanged="calLeave_SelectionChanged">
        </asp:Calendar>

        <br />

        <asp:Label ID="lblSelectedDate" runat="server"></asp:Label>

        <br />
        <br />

        <asp:Button ID="btnLeave" runat="server"
            Text="Apply for Leave"
            OnClick="btnLeave_Click" />

    </form>
</body>
</html>