using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using find_your_road.Classes;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

namespace find_your_road
{
    public partial class Singn_Up : System.Web.UI.Page
    {
        User user;
        SqlConnection con = new SqlConnection("Data Source=Bilal-PC;Initial Catalog=db;Integrated Security=True");  

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into User_ " +
                "(UserId, Name, Email, Password, Bio, Avatar) select '" +
                Membership.GeneratePassword(12, 1).ToString() + "', '" + name.Text + "', '" + email.Text +
                "', '" + password.Text + "', 'écrivez votre biographie ...' , BulkColumn " +
                "FROM Openrowset( Bulk 'C:\\Users\\Bilal\\Desktop\\find_your_road\\avatar.jpg', " +
                "Single_Blob) as image;", con);

            cmd.ExecuteNonQuery();

            SqlCommand cmd2 = new SqlCommand("SELECT * FROM User_ WHERE Email = '" +
                email.Text + "' AND Password = '" + password.Text + "'", con);

            SqlDataReader dr = cmd2.ExecuteReader();

            if (dr.Read())
            {
                user = new User(dr[1].ToString(), dr[2].ToString(), dr[3].ToString(), dr[4].ToString());
                Session["User"] = user;
                Session["User_id"] = dr[0].ToString();
                Response.Redirect("Home.aspx");
            }
            con.Close();
        }
    }
}