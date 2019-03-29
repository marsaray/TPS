<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="TPS.UserManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="CSS/main.css" />
    <title>User Management</title>
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
    <div id ="header"></div>
    <form id="frmUserManagement" runat="server">
        <div id ="Main">

            <asp:ImageButton ID="ImageButton1" runat="server" Height="133px" ImageUrl="images/generic-logo.jpg" PostBackUrl="~/Index.aspx" Width="537px" />
            <br />
            &nbsp;<img src="images/user.png" height="50" style="height: 86px; width: 92px" />
            <h1>User Management</h1>
            <h3>Add User</h3>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Name:" CssClass="Labels"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtUserName" runat="server" CssClass="Inputs"></asp:TextBox>
            </p>
            <p>
                &nbsp;<asp:Label ID="Label2" runat="server" CssClass="Labels" Text="Password: "></asp:Label>
                &nbsp;<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="Inputs"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label3" runat="server" Text="Access Code: "></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="Inputs">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Manager</asp:ListItem>
                    <asp:ListItem>Client</asp:ListItem>
                    <asp:ListItem Value="3">Staff</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                <asp:Button ID="btnAddUser" runat="server" Text="Add" OnClick="btnAddUser_Click" />
            </p>
            <h3>Current Users:</h3>
        </div>
        <div>
            <p>
                <asp:GridView ID="GridView1" runat="server" CssClass="Grid" OnSelectedIndexChanged="grdUserManagement_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </p>
        </div>
    </form>
    <div id ="footer"></div>
</body>
</html>
