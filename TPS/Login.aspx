<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TPS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Login {
            border:thick;
            font-family:sans-serif;
            align-content: center;
            padding-left: 600px;
            padding-top: 200px;
        }
        footer{
            align-content: center;
        }
        header{
            align-content: center;
        }
    </style>
</head>
<body>
    <nav><a href="www.no.com">Home</a></nav>
    <form id="Login" runat="server">
            <img src="images/generic-logo.jpg" />
            <br />
            <asp:Label ID="label" runat="server" Text="Username:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUserName" runat="server" style= "margin-left: -2px " Width="120px"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server"  Width ="120px" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnForgot" runat="server" Text="Forgot Password" />
    </form>
    <footer><a href ="www.no.com">Legal</a>&nbsp;<a href ="www.no.com">Contact Us</a>&nbsp;<a href ="www.no.com">Locations</a>&nbsp;<a href ="www.no.com">General</a></footer>
</body>
</html>
