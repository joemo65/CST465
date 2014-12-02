using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TermProject.Admin
{
    public partial class ManageUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Roles.RoleExists("Admins"))
            {
                Roles.CreateRole("Admins");
            }

            foreach (MembershipUser user in Membership.GetAllUsers())
            {
                uxExistingUsersDDL.Items.Add(new ListItem(user.UserName));
            }
            foreach (string role in Roles.GetAllRoles())
            {
                uxExistingRolesDDL.Items.Add(new ListItem(role));
            }

        }

        protected void uxCreateRoleButton_Click(object sender, EventArgs e)
        {
            if (!Roles.RoleExists(uxRoleNameTextBox.Text))
            {
                Roles.CreateRole(uxRoleNameTextBox.Text);
            }
        }

        protected void uxAddUserButton_Click(object sender, EventArgs e)
        {
            Roles.AddUserToRole(uxExistingUsersDDL.SelectedValue, uxExistingRolesDDL.SelectedValue);
        }
    }
}