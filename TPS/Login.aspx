<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TPS.Login" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <!-- Main Css Sheet --> 
    <link rel ="stylesheet" type ="text/css" href="CSS/main.css" />
    <style type="text/css">
        
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
            <img class ="Logo" src="images/generic-logo.jpg" style = "height: 133px; width: 537px" />
            &nbsp;<asp:Login ID="Login1" runat="server" CssClass="Logo">
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
