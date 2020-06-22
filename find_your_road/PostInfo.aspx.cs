using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace find_your_road
{
    public partial class PostInfo : System.Web.UI.Page
    {
        protected string html() { 
                return @""; 
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = (String)Session["Post_Id"];
            //Session["html"] = @"";
            //UserID = Session["html"];
        }
    }
}