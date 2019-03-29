<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffPortal.aspx.cs" Inherits="TPS.StaffPortal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Staff Portal
    </title>
    <link rel="stylesheet" type="text/css" href="CSS/main.css" />
    <script src ="Scripts/jquery-3.3.1.min.js"></script>
    <script>
        //Add the header and footer bars
        $(function () {
            $("#header").load("addons/header.html");
            $("#footer").load("addons/footer.html");
        });
    </script>
</head>
<body>
    <div id="header"></div>
    <form id="frmStaffPortal" runat="server">
        <div id="Form">
            <p>
                <img src="images/generic-logo.jpg" class="Logo" />
            </p>
        </div>
    </form>
    <div id ="footer"></div>
</body>
</html>
