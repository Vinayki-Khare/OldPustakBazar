<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/Login.css" />
</head>
<body>
    <form id="form2" runat="server">
        <div class="popup">
            <div class="form">
                <br /><br />
                <div class="header">
                    User login
                </div>
                <div class="element">
                    <asp:Label ID="L1" runat="server" Text="Username"></asp:Label>
                    <asp:TextBox ID="Umail" runat="server" CssClass="form-control" placeholder="Enter username"></asp:TextBox>
                </div>
                <div class="element">
                    <asp:Label ID="L2" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="Upass" type="password" runat="server" CssClass="form-control" placeholder="Enter password"></asp:TextBox>
                </div>
                <br />
                <div class="element">
                    <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" Style="background: #4889da;" />
                    <asp:Label ID="lbl1msg" runat="server"></asp:Label>
                </div>
                <div class="element">
                    <a href="IndexPage.aspx">Back to home page</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
