using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;


namespace find_your_road
{
    public partial class PostInfo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=Bilal-PC;Initial " +
                                              "Catalog=db;Integrated Security=True");
        //String post_info;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
                Response.Redirect("Sign In.aspx");

            String id = (String)Session["Post_Id"];
            Label1.Text = id;
            
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Post WHERE PostId = '"+id+"'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label1.Text = dr[4].ToString();
            }
            con.Close();
        }

    }
}