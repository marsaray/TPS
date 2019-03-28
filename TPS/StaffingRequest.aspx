<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffingRequest.aspx.cs" Inherits="TPS.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staffing Request</title>
    <link rel ="stylesheet" type ="text/css" href="CSS/main.css" />
</head>
<body>
    <nav>Links go here</nav>
    <form id="form1" runat="server">
        <div>
            <img src ="images/generic-logo.jpg" style="height: 133px; width: 537px" />
            <br />
            <img src ="images/staffingrequest.jpg" style=" height: 86px; width: 92px" />
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
                <asp:Button ID ="btnAdd" runat ="server" Text ="Add Request" style ="border-radius:4px"/>
        </div>
    </form>
    <footer>Links go here</footer>
</body>
</html>
