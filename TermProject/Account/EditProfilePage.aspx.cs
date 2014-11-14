using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditProfilePage : System.Web.UI.Page
{
    private ProfileData data;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SaveButtonClick(object sender, EventArgs e)
    {
        //won't save until all fields are entered.
        if(Page.IsValid)
        {
            data = new ProfileData();

            //set the data within the class to the web fields
            SetData();

            //put the data into the session to be access across the website
            SetSession();


            //Redirect to the View Profile Page
            Response.Redirect("ViewProfilePage.aspx");
        }
    }

    private void SetData()
    {
        data.Name = uxNameTextBox.Text;
        data.Email = uxEmailTextBox.Text;
        data.UserType = uxUserTypeDropDownList.SelectedValue;
        data.Hobby = uxHobbyTextBox.Text;
        data.Band = uxBandTextBox.Text;
        data.Biography = uxBiographyTextBox.Text;
        data.CoursePrefix = uxCoursePrefixTextBox.Text;
        data.CourseNumber = uxCourseNumberTextBox.Text;
        data.CourseDescription = uxCourseDescriptionTextBox.Text;
    }

    private void SetSession()
    {
        Session["Name"] = data.Name;
        Session["Email"] = data.Email;
        Session["UserType"] = data.UserType;
        Session["Hobby"] = data.Hobby;
        Session["Band"] = data.Band;
        Session["Biography"] = data.Biography;
        Session["CoursePrefix"] = data.CoursePrefix;
        Session["CourseNumber"] = data.CourseNumber;
        Session["CourseDescription"] = data.CourseDescription;
    }
}