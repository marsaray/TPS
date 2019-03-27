<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TPS.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body{
            flex:inherit;
            align-content: center;
            font-family:sans-serif;
            text-align: center;
        }
        h1{
            vertical-align:central;
            font-size: 32px;
        }
    </style>
    <title></title>
</head>
<body style="height: 628px; width: 1775px">
    <nav>Links go here</nav>
    <form id="form1" runat="server">
        <div id ="Main" style= "height: 605px; width: 1765px">
            <img src ="images/generic-logo.jpg" style="height: 133px; width: 537px" />
            <h1>Navigation</h1>
            <p>
                <asp:ImageButton ID="ImageButton1" runat="server" />
            </p>
            <p>
                <asp:ImageButton ID="ImageButton2" runat="server" />
            </p>
            <p>
                <asp:ImageButton ID="ImageButton3" runat="server" />
            </p>
            <p>
                <asp:ImageButton ID="ImageButton4" runat="server" />
            </p>
        </div>
    </form>
    <footer>Links go here</footer>
</body>
</html>
