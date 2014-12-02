<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="TermProject.Admin.ManageUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheets" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Head" runat="server">
    <title>Manage Users</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Body" runat="server">
    <h1>Manage Users</h1>
    <fieldset id="uxRoleFieldSet">
        <legend id="uxRolesLegend">Roles</legend>
        <asp:Label id="uxRoleNameLabel" Text="Role Name: " AssociatedControlID="uxRoleNameTextBox" runat="server"></asp:Label>
        <asp:Textbox id="uxRoleNameTextBox" runat="server"></asp:Textbox>
        <asp:Button ID="uxCreateRoleButton" Text="Create Role" OnClick="uxCreateRoleButton_Click" runat="server" /><br />
    </fieldset>
    <fieldset id="uxRoleMembershipFieldSet">
        <legend id="uxRolesMembership">Role Membership</legend>
        <asp:Label id="uxExistingUsersLabel" Text="Existing Users: " AssociatedControlID="uxExistingUsersDDL" runat="server"></asp:Label>
        <asp:DropDownList ID="uxExistingUsersDDL" runat="server"></asp:DropDownList>
        <asp:Label id="uxExistingRolesLabel" Text="Existing Roles: " AssociatedControlID="uxExistingRolesDDL" runat="server"></asp:Label>
        <asp:DropDownList ID="uxExistingRolesDDL" runat="server"></asp:DropDownList>
        <asp:Button ID="uxAddUserButton" Text="Add User" OnClick="uxAddUserButton_Click" runat="server" /><br />
    </fieldset>

</asp:Content>
