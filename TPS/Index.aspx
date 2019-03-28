<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TPS.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel ="stylesheet" type ="text/css" href="CSS/main.css" />
    <style>
        h1{
            vertical-align:central;
            font-size: 32px;
        }
    </style>
    <title></title>
</head>
<body style="height: 720px; width: 1792px">
    <nav>Links go here</nav>

    <form id="frmIndex" runat="server">
        <div id ="Main" style= "height: 663px; width: 1765px; margin-bottom: 61px;">
            <img src ="images/generic-logo.jpg" style="height: 133px; width: 537px" />
            <h1>Navigation</h1>
            <p>
                <asp:ImageButton ID="btnUser" runat="server" Height="50px" ImageUrl="~/images/user.png" Width="61px" CssClass="Images" />
                &nbsp;<asp:HyperLink ID="lnkUserManagement" runat="server">User Management</asp:HyperLink>
            </p>
            
            <p>
                <asp:ImageButton ID="btnStaff" runat="server" CssClass="Images" Height="50px" ImageUrl="~/images/staff.jpg" Width="56px" />
            &nbsp;<asp:HyperLink ID="lnkStaff" runat="server">Staff</asp:HyperLink>
            </p>

            <p>
                <asp:ImageButton ID="btnContracts" runat="server" CssClass="Images" Height="50px" ImageUrl="~/images/contract.png" />
            &nbsp;<asp:HyperLink ID="lnkContracts" runat="server">Contracts</asp:HyperLink>
            </p>

            <p>
                <asp:ImageButton ID="imgStaffRequest" runat="server" CssClass="Images" Height="50px" ImageUrl="~/images/staffingrequest.jpg" />
            &nbsp;<asp:HyperLink ID="lnkStaffRequest" runat="server">Staffing Request</asp:HyperLink>
            </p>
            
            <p>
                <asp:ImageButton ID="imgStaffRequestList" runat="server" CssClass="Images" Height="50px" ImageUrl="~/images/staffrequestlist.png" />
                &nbsp;<asp:HyperLink ID ="lnkStaffRequestList" runat="server">Staff Request List</asp:HyperLink>            
            </p>
        </div>
    </form>
    <footer>Links go here</footer>
</body>
</html>
