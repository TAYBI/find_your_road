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
    public partial class Home : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=Bilal-PC;Initial " +
                                              "Catalog=db;Integrated Security=True");

        public void get_posts()
        {
            con.Open();
            grid.InnerHtml = "";
            SqlCommand cmd = new SqlCommand("SELECT * FROM Post", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                HyperLink hyperLink = new HyperLink();
                //String card = "<a id=\"" + dr[0].ToString() + "\" href=\"PostInfo.aspx\" class=\"card\">" +
                //              "<h4><b>" + dr[2].ToString() + "</b></h4>" +
                //              "<p>" + dr[3].ToString() + "</p>" +
                //              "</a>";
                hyperLink.CssClass = "card";
                hyperLink.ID = dr[5].ToString();
                hyperLink.Text = "<h4><b>" + dr[2].ToString() + "</b></h4>" +
                                 "<p>" + dr[3].ToString() + "</p>";
                //hyperLink.Click += (linkGoSomewhere_Click);
                //grid.InnerHtml += card;
                grid.Controls.Add(hyperLink);
            }
            con.Close(); 
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User"] == null)
                    Response.Redirect("Sign In.aspx");
                else
                {
                    User user = (User)Session["User"];
                    Page.Title = "Home | " + user.getName();
                    get_posts();
                }
            }
        }

        protected void post_Click(object sender, EventArgs e)
        {
            HyperLink hyperLink = (HyperLink)sender;
            Session["Poost_Id"] = hyperLink.ID;
            Response.Redirect("PostInfo.aspx");
        }
    }
}