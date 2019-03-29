<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contracts.aspx.cs" Inherits="TPS.Contracts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel ="stylesheet" type ="text/css" href="CSS/main.css" />
    <title>Contracts</title>
    <script src ="Scripts/jquery-3.3.1.min.js"></script>
    <script>
        //Add the header and footer bars
        $(function () {
            $("#header").load("addons/header.html");
            $("#footer").load("addons/footer.html");
        });
    </script>
</head>
    <!-- This is the contract form that will show the contract database -->
<body>
    <div id ="header"></div>
    <p>
    <img src ="images/generic-logo.jpg" class="Logo"/>
    </p>
    <form id="frmContracts" runat="server">
        <div id ="Form">      
        </div>
    </form>
    <div id ="footer"></div>
    </body>
</html>
