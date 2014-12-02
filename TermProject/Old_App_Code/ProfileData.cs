using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class ProfileData
{
    public string UserID { get; set; }
    public string Name {get; set; }
    public string Email {get; set; }
    public string UserType {get; set; }
    public string Hobby {get; set; }
    public string Band {get; set; }
    public string Biography {get; set;}
    public string CoursePrefix { get; set; }
    public string CourseNumber { get; set; }
    public string CourseDescription { get; set; }
   
	public ProfileData()
	{
	}
}