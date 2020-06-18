using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using find_your_road.Classes;

namespace find_your_road
{
    public partial class UserInfo : System.Web.UI.Page
    {
        User user;
        String bio;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User"] == null)
                    Response.Redirect("Sign In.aspx");
                else
                {
                    user = (User)Session["User"];
                    Page.Title = "Profile | " + user.getName();
                    User_name.Text = user.getName();
                    Input_Name.Text = user.getName();
                    User_bio.Text = user.getBio();
                    bio = user.getBio();
                }
            }
        }
        protected string User_Bio_Input { get { return bio; } }
    }
}