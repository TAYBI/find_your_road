using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

namespace find_your_road
{
    public partial class PostEditor : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=Bilal-PC;Initial " +
                                              "Catalog=db;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
                Response.Redirect("Sign In.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
                    
            String user_Id = (String)Session["User_Id"];
            String post_Id = Membership.GeneratePassword(12, 1).ToString();
            String postTitle = Post_Title.Text;
            String postDis = Post_Dis.Value;
            String postDetails = post_Details.Value;
            String postType = Post_Type.Text;
            
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Post values ('"+post_Id+"', '"+user_Id+"', '"+
                                            postTitle +"', '"+ postDis +"', '"+
                                            postDetails+"', '"+postType+"', 0)", con);
            cmd.ExecuteNonQuery();
            con.Close();
            
            Response.Redirect("Home.aspx");
            //insert into Post values ('p', 'au', '', '', '', '', 0);
        }
    }
}