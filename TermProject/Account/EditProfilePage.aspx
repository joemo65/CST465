<%@ Page Title="Edit Your Profile" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="EditProfilePage" Codebehind="EditProfilePage.aspx.cs" %>

<asp:Content ID="ContentStyle" ContentPlaceHolderID="Stylesheets" Runat="Server">
</asp:Content>
<asp:Content ID="ContentHeader" ContentPlaceHolderID="Header" Runat="Server">
        <h1>Edit Your Profile</h1>
</asp:Content>
<asp:Content ID="ContentProfileFields" ContentPlaceHolderID="Body" Runat="server">
    <div>
        <asp:Label ID="uxNameLabel" Text="Name" AssociatedControlID="uxNameTextBox" runat="server" ></asp:Label>
        <asp:TextBox ID="uxNameTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="uxNameFieldValidator" ErrorMessage="*" ControlToValidate="uxNameTextBox" runat="server"></asp:RequiredFieldValidator>  
    </div>
    <div>
        <asp:Label ID="uxEmailLabel" Text="Email" AssociatedControlID="uxEmailTextBox" runat="server" ></asp:Label>
        <asp:TextBox ID="uxEmailTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="uxEmailFieldValidator" ErrorMessage="*" ControlToValidate="uxEmailTextBox" runat="server"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label ID="uxUserTypeLabel" Text="User Type" AssociatedControlID="uxUserTypeDropDownList" runat="server"></asp:Label>
        <asp:DropDownList ID="uxUserTypeDropDownList" runat="server">
            <asp:ListItem Value="0" Text="--Select"></asp:ListItem>
            <asp:ListItem Text="Student"></asp:ListItem>
            <asp:ListItem Text="Faculty/Staff"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator InitialValue="0" ID="uxUserTypeFieldValidator" ErrorMessage="*" ControlToValidate="uxUserTypeDropDownList" runat="server"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label ID="uxHobbyLabel" Text="Hobby" AssociatedControlID="uxHobbyTextBox" runat="server" ></asp:Label>
        <asp:TextBox ID="uxHobbyTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="uxHobbyFieldValidator" ErrorMessage="*" ControlToValidate="uxHobbyTextBox" runat="server"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label ID="uxBandLabel" Text="Band" AssociatedControlID="uxBandTextBox" runat="server" ></asp:Label>
        <asp:TextBox ID="uxBandTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="uxBandFieldValidator" ErrorMessage="*" ControlToValidate="uxBandTextBox" runat="server"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label ID="uxBiographyLabel" Text="Biography" AssociatedControlID="uxBiographyTextBox" runat="server" ></asp:Label>
        <asp:TextBox ID="uxBiographyTextBox" TextMode="MultiLine" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="uxBiographyFieldValidator" ErrorMessage="*" ControlToValidate="uxBiographyTextBox" runat="server"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Table ID="uxCourseTable" runat="server">
            <asp:TableHeaderRow runat="server">         
                <asp:TableHeaderCell Text="Courses"></asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow runat="server">
                <asp:TableCell Text="Course Prefix" ></asp:TableCell>
                <asp:TableCell Text="Course Number" ></asp:TableCell>
                <asp:TableCell Text="Course Description" ></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell>
                    <asp:TextBox ID="uxCoursePrefixTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="uxCoursePrefixFieldValidator" ErrorMessage="*" ControlToValidate="uxCoursePrefixTextBox" runat="server"></asp:RequiredFieldValidator>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="uxCourseNumberTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="uxCourseNumberFieldValidator" ErrorMessage="*" ControlToValidate="uxCourseNumberTextBox" runat="server"></asp:RequiredFieldValidator>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="uxCourseDescriptionTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="uxCourseDescriptionFieldValidator" ErrorMessage="*" ControlToValidate="uxCourseDescriptionTextBox" runat="server"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    <div>
        <asp:Button ID="uxSaveButton" Text="Save" OnClick="SaveButtonClick" runat="server"/>
    </div>
    <div>
        <asp:ValidationSummary ID="uxValidationSummary" ForeColor="Red" HeaderText="Please fill in the required(*) fields." ShowSummary="true" EnableClientScript="true" runat="server" />
    </div>
</asp:Content>
