﻿using System;
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
    public partial class PostEditor : System.Web.UI.Page
    {
        String postDetails;
        String edit;
        SqlConnection con = new SqlConnection("Data Source=Bilal-PC;Initial " +
                                              "Catalog=db;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            get_Types();
            
            if (Session["Edit_Post_Id"] != null)
            {
                String edtPost = (String)Session["Edit_Post_Id"];
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Post WHERE PostId = '"+
                    edtPost+"'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Post_Title.Text = dr[2].ToString();
                    Post_Dis.Value = dr[3].ToString();
                    postDetails = dr[4].ToString();
                    Post_Type.Text = dr[5].ToString();
                    edit = "edit";
                }
                con.Close();
            }

            if (Session["User"] == null)
                Response.Redirect("Sign In.aspx");
            else
            {
                User user = (User)Session["User"];
                Page.Title = "Editeur de post | " + user.getName();
            }
        }

        protected string Editing { get { return edit; } }
        
        protected string PostDetails { get { return postDetails; } }

        public void get_Types()
        {
            int selectId = Post_Type.SelectedIndex;
            Post_Type.Items.Clear();
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT DISTINCT Type_ FROM Post", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Post_Type.Items.Add(dr[0].ToString());
            }
            con.Close();

            Post_Type.SelectedIndex = selectId;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String req;         
            String user_Id = (String)Session["User_Id"];
            String post_Id = Membership.GeneratePassword(12, 1).ToString();
            String postTitle = Post_Title.Text.Replace('\'','’');
            String postDis = Post_Dis.Value.Replace('\'', '’');
            String postDetails = post_Details.Value.ToString();
            String postType = Post_Type.Text;

            if (Session["Edit_Post_Id"] != null) {
                req = "update Post set Title = '" + postTitle + "', Short_Info = '" + postDis +
                                   "', Details = '" + postDetails + "', Type_ = '" + postType +
                                   "'  WHERE PostId = '" + (String)Session["Edit_Post_Id"] +
                                   "' AND UserId = '" + user_Id + "'";
            } else {
                req = "insert into Post values ('" +
                                            post_Id + "', '" + user_Id + "', '" +
                                            postTitle + "', '" + postDis + "', '" +
                                            postDetails + "', '" + postType + "', 0)";
            }

            con.Open();
            SqlCommand cmd = new SqlCommand(req, con);
            cmd.ExecuteNonQuery();
            con.Close();
            
            Response.Redirect("Home.aspx");
            //insert into Post values ('p', 'au', '', '', '', '', 0);
        }
    }
}