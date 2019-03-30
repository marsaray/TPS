<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TPS.Login" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <!-- Main Css Sheet -->
    <link rel="stylesheet" type="text/css" href="CSS/main.css" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script>
        //Add the header and footer bars
        $(function () {
            $("#footer").load("addons/footer.html");
        });
    </script>
</head>
<body>
    <form id="Login" runat="server">
        <img class="Logo" src="images/TPS_Logo_Small.jpg" />
        &nbsp;
        <br />
        <br />
        <br />
        <asp:Login ID="loginMain" runat="server" CssClass="Logo" OnAuthenticate="loginMain_Authenticate" />
        &nbsp;
    </form>
    <br />
    <br />
    <br />
    <div id ="footer"></div>
</body>

</html>
