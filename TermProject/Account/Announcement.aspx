<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Announcement.aspx.cs" Inherits="TermProject.Account.Announcement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheets" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Body" runat="server">
    <h1>announcement</h1>
    <asp:FormView ID="uxFormView" runat="server">

    </asp:FormView>
    <asp:GridView ID="uxGridView" runat="server">

    </asp:GridView>
</asp:Content>
