<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_login.aspx.cs" Inherits="Admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="popup">
            <div class="form">
                <br />
                <br />
                <div class="header">
                    Admin Login
                </div>
                <div class="element">
                    <label for="username">Admin Name</label>
                    <asp:TextBox type="text" ID="uname" name="uname" runat="server" placeholder="Enter username" ErrorMessage="Please Enter Your Username" autocomplete="off"></asp:TextBox>
                </div>
                <div class="element">
                    <label for="password">Password</label>
                    <asp:TextBox type="password" ID="pwd" name="pwd" runat="server" placeholder="Enter password" ErrorMessage="Please Enter Your Password"></asp:TextBox>
                </div>
                <div class="element">
                    <asp:Button ID="Button1" Text="Log In" runat="server" OnClick="Button1_Click" Style="background-color: #4889da;" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </div>
                <div class="element">
                    <a href="../IndexPage.aspx">Back to home page</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
