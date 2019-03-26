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
    <form id="Login" runat="server">
            <img src="images/generic-logo.jpg" />
            &nbsp;<asp:Login ID="Login1" runat="server">
            </asp:Login>
&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </form>
    <footer><a href ="www.no.com">Legal</a>&nbsp;<a href ="www.no.com">Contact Us</a>&nbsp;<a href ="www.no.com">Locations</a>&nbsp;<a href ="www.no.com">General</a></footer>
</body>
</html>
