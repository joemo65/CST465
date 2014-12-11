<%@ Page Title="Announcements" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="announcements.aspx.cs" Inherits="TermProject.announcements" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheets" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Head" runat="server">
    <h1>Announcements</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Body" runat="server">
    <div>
    <asp:Repeater id="uxRepeater" runat="server">
        <HeaderTemplate>
            <table >
                <tr>
                    <th>Title</th>
                    <th>Body</th>
                    <th>User Id</th>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%#Container.DataItem("title")%></td>
                <td><%#Container.DataItem("body")%></td>
                <td><%#Container.DataItem("userid")%></td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
    </div>  
</asp:Content>
