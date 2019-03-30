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

        function doValidation() {
            //Declare our variables for the function
            let firstName;
            let lastName;
            let salary;
            //regex variables to check the text
            let regexName = /[0-9]/;
            let regexCurrency = /[a-z]/;
            //set the variables from the fields
            firstName = $("#txtFirstName").val();
            lastName = $("#txtLastName").val();
            salary = $("#txtSalary").val();
            //test to make sure all the fields are entered correctly
            if (firstName === "" || regexName) {
                $("#error").text("Please enter first name.");
            }
            else if (lastName === "" || regexName) {
                $("#error").text("Please enter last name.");
            }
            else if (salary === "" || regexCurrency) {
                $("#error").text("Please enter salary");
            }
            else {
                $("#error").text("");
                return true;
            }
        }
    </script>

</head>
<body>
    <div id="header"></div>
    <form id="frmStaff" runat="server">
        <div id="Form">
            <p>
                <asp:ImageButton ID="imgHome" runat="server" ImageUrl="images/TPS_Logo_Small.jpg" PostBackUrl="~/Index.aspx" CssClass="Logo" />
&nbsp;</p>
            <p>
                <img src ="images/staff.jpg" class ="Icons" />
            </p>
            <h1>Staff</h1>
            <h2>Add Staff</h2>
            <p>
                <asp:Label runat="server" Text = "First Name: " CssClass ="Labels"></asp:Label>
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
                <asp:Button runat="server" Text="Add Staff" ID="btnAddStaff" OnClientClick="doValidation()"/> <!-- on client click is where the script runs -->
            </p>
            <p>
                <asp:Label runat ="server" ID ="error" CssClass ="Error"></asp:Label>
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
