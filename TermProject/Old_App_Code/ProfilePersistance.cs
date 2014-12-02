using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TermProject.Old_App_Code
{
    static class ProfilePersistance
    {
        public static void SaveProfile(ProfileData data)
        {
            SqlCommand command = new SqlCommand("UPDATE UserProfile SET "+
                                                "Name="+data.Name+","+
                                                "Email="+data.Email+","+
                                                "UserType="+data.UserType+","+
                                                "Hobbies="+data.Hobby+","+
                                                "FavoriteBands="+data.Band+","+
                                                "Biography="+data.Biography+
                                                "WHERE UserId="+data.UserID+";");
            command.CommandType = CommandType.StoredProcedure;
        }

        public static ProfileData LoadProfile(string id)
        {
            ProfileData data = new ProfileData();
            
            SqlCommand getName = new SqlCommand("SELECT Name FROM UserProfile WHERE UserId="+id+";");
            SqlCommand getEmail = new SqlCommand("SELECT Email FROM UserProfile WHERE UserId=" + id + ";");
            SqlCommand getUserType = new SqlCommand("SELECT UserType FROM UserProfile WHERE UserId=" + id + ";");
            SqlCommand getHobbies = new SqlCommand("SELECT Hobbies FROM UserProfile WHERE UserId=" + id + ";");
            SqlCommand getFavoriteBand = new SqlCommand("SELECT FavoriteBand FROM UserProfile WHERE UserId=" + id + ";");
            SqlCommand getBiography = new SqlCommand("SELECT Biography FROM UserProfile WHERE UserId=" + id + ";");

            data.Name = getName.CommandText;
            data.Email = getEmail.CommandText;
            data.UserType = getUserType.CommandText;
            data.Hobby = getHobbies.CommandText;
            data.Band = getFavoriteBand.CommandText;
            data.Biography = getBiography.CommandText;
            data.UserID = id;

            return data;
        }
    }
}