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

        public void get_Types()
        {
            int selectId = Select.SelectedIndex;
            Select.Items.Clear();

            Select.Items.Add("Toute");
            con.Open();
            grid.InnerHtml = "";
            SqlCommand cmd = new SqlCommand("SELECT DISTINCT Type_ FROM Post", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Select.Items.Add(dr[0].ToString());
            }
            con.Close();

            Select.SelectedIndex = selectId;
        }

        public void get_posts()
        {
            con.Open();
            grid.InnerHtml = "";
            SqlCommand cmd = new SqlCommand("SELECT * FROM Post", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                String card = "<div class=\"card\">" +
                              "<h3><b>" + dr[2].ToString() + "</b></h3>" + 
                              "<p>" + dr[3].ToString() + "</p>" +
                              "<button class=\"button \" id=\"" + dr[0].ToString() +
                              "\" >Details</button>" +
                              "</div>";
                grid.InnerHtml += card;
            }
            con.Close(); 
        }

        [System.Web.Services.WebMethod]
        public static string id_Session(string strpath)
        {
            Page objp = new Page();
            objp.Session["Post_Id"] = strpath;
            return strpath;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
                if (Session["User"] == null)
                    Response.Redirect("Sign In.aspx");
                else
                {
                    User user = (User)Session["User"];
                    Page.Title = "Home | " + user.getName();
                    get_Types();
                    get_posts();
                }
            //}
        }

        protected void Select_SelectedIndexChanged(object sender, EventArgs e)
        {
            String type = Select.Text;
            String req;
            
            if (type == "Toute")
                req = "SELECT * FROM Post";
            else
                req = "SELECT * FROM Post  WHERE Type_ = '" + type + "'";

            con.Open();
            grid.InnerHtml = "";
           
            SqlCommand cmd = new SqlCommand(req, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                String card = "<div class=\"card\">" +
                              "<hr />" +
                              "<h3><b>" + dr[2].ToString() + "</b></h3>" +
                              "<p>" + dr[3].ToString() + "</p>" +
                              "<button class=\"button \" id=\"" + dr[0].ToString() +
                              "\" >Details</button>" +
                              "</div>";
                grid.InnerHtml += card;
            }
            con.Close();
        }

    }
}