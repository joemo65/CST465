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
                            <th>User ID</th>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><asp:HyperLink id="uxLink" NavigateUrl="<%# Eval("UserId") %>" Text="<%# Eval("Title" %>" runat="server"></asp:HyperLink></td>
                        <td><%# Eval("Body")%></td>
                        <td><%# Eval("UserId")%></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
    <asp:LoginView ID="uxLoginControl"  runat="server">
        <AnonymousTemplate>
            <p>You must log in to post announcements.</p>
        </AnonymousTemplate>
        <LoggedInTemplate>
            <form>
                <asp:label ID="uxTitleLbl" AssociatedControlID="uxTitleTB" Text="Title: " runat="server"></asp:label>
                <asp:TextBox id="uxTitleTB" runat="server"></asp:TextBox>
                <asp:Label ID="uxBodyLbl" AssociatedControlID="uxBodyTB" Text="Body: " runat="server"></asp:Label>
                <asp:TextBox ID="uxBodyTB" runat="server"></asp:TextBox>
            </form>
        </LoggedInTemplate>
    </asp:LoginView>
    </div>  
</asp:Content>
