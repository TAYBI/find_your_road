using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using find_your_road.Classes;
using System.Data.SqlClient;
using System.Data;

namespace find_your_road
{

    public partial class Sign_In : System.Web.UI.Page
    {
        //public static Connexion con = new Connexion();

        SqlConnection con = new SqlConnection("Data Source=Bilal-PC;Initial Catalog=db;Integrated Security=True");  

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["User"] = null;
            Session["User_id"] = null;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM User_ WHERE Email = '"+
                email.Text+"' AND Password = '"+motpass.Text+"'", con);

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                User user = new User(dr[1].ToString(), dr[2].ToString(),
                                     dr[3].ToString(), dr[4].ToString(), dr[5].ToString());
                Session["User"] = user;
                Session["User_id"] = dr[0].ToString();
                Response.Redirect("Home.aspx");
            }
            con.Close();
        }
    }
}