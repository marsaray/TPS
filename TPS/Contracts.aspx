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
    <form id="frmContracts" runat="server">
    <p>
        <asp:ImageButton ID="btnHome" runat="server" ImageUrl="images/TPS_Logo_Small.jpg" PostBackUrl="~/Index.aspx" Width="537px" CssClass="Logo" />
&nbsp;</p>
        <div id ="Form">   
            <p>
                <img src ="images/staffrequestlist.png" class ="Icons"/>
            </p>
           <h1>Requests List</h1>
            <p>
                <!-- The following is how to add a control into the gridview -->
                <asp:GridView OnRowCommand ="grdViewStaffRequests_RowCommand" ID="grdViewStaffRequests" runat="server" CssClass="Grid">
                    <Columns>
                        <asp:ButtonField ButtonType="Button" Text="Approve" />
                        <asp:ButtonField ButtonType="Button" Text="Deny" CommandName="denyRequest" />
                    </Columns>
                </asp:GridView>
            </p>
            <h2> Approved Contracts</h2>
            <asp:GridView ID ="grdViewContracts" runat="server" CssClass="Grid" ></asp:GridView>
        </div>
    </form>
    <div id ="footer"></div>
    </body>
</html>
