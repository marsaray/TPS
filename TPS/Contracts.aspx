﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contracts.aspx.cs" Inherits="TPS.Contracts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
</head>
    <!-- This is the contract form that will show the contract database -->
<body>
    <style>
        body {
            background-color: red
        }
    </style>
    <form id="form1" runat="server">
        <div>
            
            <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
            
        </div>
    <input = "button" name =" Hello" onclick = "doVerification()"/>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
    </body>
    <script>
        function doVerification() {
            var turtle = 23;
            console.log(turtle);
        }
    </script>
</html>