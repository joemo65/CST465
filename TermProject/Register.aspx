﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Lab5.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
</head>
<body>
    <h1>Register</h1>
    <form id="form1" runat="server">
    <div>
        <asp:CreateUserWizard MembershipProvider="SqlMembership" ContinueDestinationPageUrl="~/Login.aspx" runat="server"></asp:CreateUserWizard>
    </div>
    </form>
</body>
</html>
