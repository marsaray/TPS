<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="TPS.StaffPortal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Staff
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
    <form id="frmStaff" runat="server">
        <div id="Form">
            <p>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="133px" ImageUrl="images/generic-logo.jpg" PostBackUrl="~/Index.aspx" Width="537px" />
&nbsp;</p>
            <p>
                <img src ="images/staff.jpg" class ="Icons" />
            </p>
            <h1>Staff</h1>
            <h2>Add Staff</h2>
            <p>
                <asp:Label runat="server" Text ="First Name: " CssClass ="Labels"></asp:Label>
                &nbsp; <asp:TextBox runat="server" CssClass ="Inputs" ID="txtFirstName" Height="22px"></asp:TextBox>
            </p>
            <p>
                <asp:Label runat="server" Text ="Last Name: " CssClass ="Labels"></asp:Label>
                &nbsp; <asp:TextBox runat="server" CssClass ="Inputs" ID ="txtLastName"></asp:TextBox>
            </p>
            <p>
                <asp:Label runat="server" Text ="Education Level: " CssClass ="Labels"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList runat="server" CssClass ="Inputs" ID ="drpEduLevel">
                    <asp:ListItem Value="0">High School</asp:ListItem>
                    <asp:ListItem Value="1">Bachelor</asp:ListItem>
                    <asp:ListItem Value="2">Masters</asp:ListItem>
                    <asp:ListItem Value="3">Doctorate</asp:ListItem>
                    <asp:ListItem Value="4">Some College</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                <asp:Label runat="server" Text ="Salary: " CssClass ="Labels"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox runat="server" CssClass ="Inputs" ID ="txtSalary"></asp:TextBox>
            </p>
            <p>
                <asp:Button runat="server" Text="Add Staff" style="border-radius:2px"/>
            </p>
            <h2>
                Current Staff:
            </h2>
            <p>
                <asp:GridView runat="server" CssClass ="Grid"></asp:GridView>
            </p>
        </div>
    </form>
    <div id ="footer"></div>
</body>
</html>
