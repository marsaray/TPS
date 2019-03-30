<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffingRequest.aspx.cs" Inherits="TPS.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staffing Request</title>
    <link rel ="stylesheet" type ="text/css" href="CSS/main.css" />
    <script src ="Scripts/jquery-3.3.1.min.js"></script>
    <script>
        //Add the header and footer bars
        $(function () {
            $("#header").load("addons/header.html");
            $("#footer").load("addons/footer.html");
        });
        function doValidation() {
            //Function Variable Scope
            let clientID;
            let type;
            let location;
            //Assignment
            clientID = $("#txtClientID").val();
            type = $("#txtType").val();
            location = $("#txtLocation").val();
            //Checks
            if (clientID == "" || clientID == REGEXNAME) {
                $("#error").text = "Please enter your ClientID";
            }
            else if (type == "" || type == REGEXNAME) {
                $("#error").text = "Please enter type";
            }
            else if (location == "" || location == REGEXNAME) {
                $("#error").text = "Please enter location";
            }
            else {
                $("#error").text = "";
            }
        }
    </script>
</head>
<body>
    <div id ="header"></div>
    <form id="form1" runat="server">
        <div>
            <asp:ImageButton ID="btnHome" runat="server" ImageUrl="images/TPS_Logo_Small.jpg" PostBackUrl="~/Index.aspx" CssClass="Logo" />
&nbsp;<br />
            <img src ="images/staffingrequest.jpg" class="Icons" />
            <br />
            <h1>Staffing Request</h1>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Client ID: " CssClass ="Labels"></asp:Label>
                &nbsp;<asp:TextBox ID="txtClientID" runat="server" CssClass ="Inputs"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label2" runat="server" Text="Type: " CssClass ="Labels"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtType" runat="server" CssClass ="Inputs"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label3" runat="server" Text="Location: " CssClass ="Labels"></asp:Label>
                &nbsp;<asp:TextBox ID="txtLocation" runat="server" CssClass ="Inputs"></asp:TextBox>
            </p>
            <p>
                <!-- should this be a drop down box? What is Status? -->
                <asp:Label ID="Label4" runat="server" Text="Status: " CssClass ="Labels"></asp:Label>
                &nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtStatus" runat="server" CssClass ="Inputs"></asp:TextBox>
            </p>
            <!-- Microsoft buttons are very ugly, can I change this to make it look better? 
                TODO: 1. Make Prettier Buttons-->
                <asp:Button ID ="btnAdd" runat ="server" Text ="Add Request" OnClientClick ="doValidation()"/>
        </div>
    </form>
    <div id ="footer"></div>
</body>
</html>
