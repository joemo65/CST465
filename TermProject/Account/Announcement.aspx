<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Announcement.aspx.cs" Inherits="TermProject.Account.Announcement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheets" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Body" runat="server">
    <h1>announcement</h1>
    <asp:FormView ID="uxFormView" DataSource="<%# Eval("userId") %>" runat="server">
        <ItemTemplate>
            <asp:TextBox ID="uxTitle" Text="<%# Eval("Title") %>" runat="server"></asp:TextBox>}
            <br />
            <asp:TextBox ID="uxBody" Text="<%# Eval("Body") %>" runat="server"></asp:TextBox>
        </ItemTemplate>
    </asp:FormView>
    <asp:GridView ID="uxGridView" DataSource="uxGridDataSource" runat="server">
    </asp:GridView>
    <asp:SqlDataSource id="uxGridDataSource" SelectCommand="SELECT Comments FROM aspnet_announcements WHERE UserId=<%# Eval("UserId") %>" runat="server"></asp:SqlDataSource>
</asp:Content>
