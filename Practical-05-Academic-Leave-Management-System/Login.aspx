<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Practical_05_Academic_Leave_Management_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Academic Leave Management - Login</title>
</head>

<body>
    <form id="form1" runat="server">

        <h2>Academic Leave Management System</h2>

        <p>Login to continue</p>

        <div>
            <asp:Label ID="lblUserID" runat="server"
                Text="User ID:"></asp:Label>

            <br />

            <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
        </div>

        <br />

        <div>
            <asp:Label ID="lblPassword" runat="server"
                Text="Password:"></asp:Label>

            <br />

            <asp:TextBox ID="txtPassword" runat="server"
                TextMode="Password"></asp:TextBox>
        </div>

        <br />

        <asp:CheckBox ID="chkRememberMe" runat="server"
            Text="Remember Me" />

        <br />
        <br />

        <asp:Button ID="btnLogin" runat="server"
            Text="Login"
            OnClick="btnLogin_Click" />

        <br />
        <br />

        <asp:Label ID="lblMessage" runat="server"
            ForeColor="Red"></asp:Label>

    </form>
</body>
</html>