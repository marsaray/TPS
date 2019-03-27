<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="TPS.UserManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            font-family: sans-serif;
            text-align: center;
        }
        .Nav{
            font-size: 32px;
        }
        .Grid {
            width: 80%;
            height: 200px;
            position: relative;
            display: table-cell;
            vertical-align: middle;
            margin: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:LinkButton ID="lnkHome" runat="server" CssClass="Nav" PostBackUrl="~/Index.aspx">Home</asp:LinkButton>
    <nav></nav>
        <div>
            <img src ="images/generic-logo.jpg" style="height: 153px; width: 446px" /><br />
&nbsp;<img src ="images/user.png" height="50px" style="height: 86px; width: 92px" /><h1>User Management</h1>
            <h3> Add User</h3>
            <p> 
                <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
&nbsp;<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            </p>
            <p> Password: <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </p>
            <p> Security Level:
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p> 
                <asp:Button ID="btnAddUser" runat="server" Text="Add" />
            </p>
            <h3> Current Users:</h3>

            <p>
                                <asp:GridView ID="grdUserManagement" runat="server" CssClass="Grid" OnSelectedIndexChanged="grdUserManagement_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </p>
        </div>
    </form>
    <footer>Links here</footer>
</body>
</html>
