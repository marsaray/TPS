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
    <title>Index</title>
    <script src ="Scripts/jquery-3.3.1.min.js"></script>
    <script>
        //Add the header and footer bars
        $(function () {
            $("#header").load("addons/header.html");
            $("#footer").load("addons/footer.html");
        });
    </script>
</head>
<body style="height: 798px; width: 1792px">
    <div id ="header"></div>
    <form id="frmIndex" runat="server">
        <div id ="Main" style= "height: 755px; width: 1765px; margin-bottom: 61px;">
            <asp:ImageButton ID="btnHome" runat="server" ImageUrl="images/generic-logo.jpg" PostBackUrl="~/Index.aspx" Width="537px" CssClass="Logo" />
&nbsp;<h1>Navigation</h1>
            <p>
                <asp:ImageButton ID="btnUser" runat="server" Height="50px" ImageUrl="~/images/user.png" Width="61px" CssClass="Images" OnClick="btnUser_Click" PostBackUrl="~/UserManagement.aspx" />
                &nbsp;<asp:HyperLink ID="lnkUserManagement" runat="server">User Management</asp:HyperLink>
            </p>
            
            <p>
                <asp:ImageButton ID="btnStaff" runat="server" CssClass="Images" Height="50px" ImageUrl="~/images/staff.jpg" Width="56px" PostBackUrl="~/Staff.aspx" />
            &nbsp;<asp:HyperLink ID="lnkStaff" runat="server">Staff</asp:HyperLink>
            </p>

            <p>
                <asp:ImageButton ID="btnContracts" runat="server" CssClass="Images" Height="50px" ImageUrl="~/images/contract.png" PostBackUrl="~/Contracts.aspx" />
            &nbsp;<asp:HyperLink ID="lnkContracts" runat="server">Contracts</asp:HyperLink>
            </p>

            <p>
                <asp:ImageButton ID="imgStaffRequest" runat="server" CssClass="Images" Height="50px" ImageUrl="~/images/staffingrequest.jpg" PostBackUrl="~/StaffingRequest.aspx" />
            &nbsp;<asp:HyperLink ID="lnkStaffRequest" runat="server">Staffing Request</asp:HyperLink>
            </p>
            
            <p>
                <asp:ImageButton ID="imgStaffRequestList" runat="server" CssClass="Images" Height="50px" ImageUrl="~/images/staffrequestlist.png" />
                &nbsp;<asp:HyperLink ID ="lnkStaffRequestList" runat="server">Staff Request List</asp:HyperLink>            
            </p>
            <p>
                <asp:ImageButton ID="imgStaffPortal" runat="server" CssClass="Images" ImageURL="~/images/staff.jpg" Height="50px" PostBackUrl="~/StaffPortal.aspx" />
                &nbsp;<asp:HyperLink ID ="HyperLink1" runat="server">Staff Portal</asp:HyperLink>            
            </p>
        </div>
    </form>
    <div id ="footer"></div>
</body>
</html>
