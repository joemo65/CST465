<%@ Page Title="View Your Profile" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="ViewProfilePage" Codebehind="ViewProfilePage.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheets" Runat="Server">
        <link rel="stylesheet" type="text/css" href="masterstyles.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Header" Runat="Server">
    <h1>View Your Profile</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Body" Runat="Server">
    <div>
        <span class="fieldTitle">Name: </span><asp:Literal ID="uxName" runat="server"></asp:Literal>
    </div>
    <div>
        <span class="fieldTitle">Email: </span><asp:Literal ID="uxEmail" runat="server"></asp:Literal>
    </div>
    <div>
        <span class="fieldTitle">User Type: </span><asp:Literal ID="uxUserType" runat="server"></asp:Literal>
    </div>
    <div>
        <span class="fieldTitle">Hobby: </span><asp:Literal ID="uxHobby" runat="server"></asp:Literal>
    </div>
    <div>
        <span class="fieldTitle">Band: </span><asp:Literal ID="uxBand" runat="server"></asp:Literal>
    </div>
    <div>
        <span class="fieldTitle">Biography: </span><asp:Literal ID="uxBiography" runat="server"></asp:Literal>
    </div>
    <div>
        <span class="fieldTitle">Course Prefix: </span><asp:Literal ID="uxCoursePrefix" runat="server"></asp:Literal>
    </div>
    <div>
        <span class="fieldTitle">Course Number: </span><asp:Literal ID="uxCourseNumber" runat="server"></asp:Literal>
    </div>
    <div>
    <span class="fieldTitle">Course Description: </span><asp:Literal ID="uxCourseDescription" runat="server"></asp:Literal>
    </div>

</asp:Content>

