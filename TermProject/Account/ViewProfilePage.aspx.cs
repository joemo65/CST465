using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewProfilePage : System.Web.UI.Page
{
    private ProfileData data = new ProfileData();

    protected void Page_Load(object sender, EventArgs e)
    {
        //get the data sent from the Session
        GetData();

        //set the web interface with the saved data
        SetAllLabels();
    }

    private void GetData()
    {
        data.Name = (string)Session["Name"];
        data.Email = (string)Session["Email"];
        data.UserType = (string)Session["UserType"];
        data.Hobby = (string)Session["Hobby"];
        data.Band = (string)Session["Band"];
        data.Biography = (string)Session["Biography"];
        data.CoursePrefix = (string)Session["CoursePrefix"];
        data.CourseNumber = (string)Session["CourseNumber"];
        data.CourseDescription = (string)Session["CourseDescription"];
    }

    private void SetAllLabels()
    {
        uxName.Text = data.Name;
        uxEmail.Text = data.Email; 
        uxUserType.Text = data.UserType;
        uxHobby.Text = data.Hobby;
        uxBand.Text = data.Band;
        uxBiography.Text = data.Biography; 
        uxCoursePrefix.Text = data.CoursePrefix;
        uxCourseNumber.Text = data.CourseNumber;
        uxCourseDescription.Text = data.CourseDescription;
    }
}