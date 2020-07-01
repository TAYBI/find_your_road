<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="find_your_road.UserInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/main.css" />
    <link rel="stylesheet" href="css/user_profile.css" />
    <title>Document</title>
    <style>
        .user_name {
            display: block;
            font-weight: bold;
            font-size: 1.3rem;
        }
    </style>
</head>
<body>
<form id="Form1" runat="server">
  <a  class="home_link" href="Home.aspx">Home</a>
 <header>
      <div class="container">
        <div class="user_info">
          <div class="avatar">
            <asp:ImageButton ID="User_Avatar" ImageUrl="~/imgs/avatar.jpg" 
                runat="server" Height="150px" Width="150px" />
            <%--<asp:FileUpload ID="FileUpload1" runat="server" />--%>
<%--            <asp:Button ID="Button2" runat="server" Text="Button" onclick="Button2_Click" />--%>
          </div>
          <div class="user_personel_info">
           <asp:Label ID="User_name" class="user_name" runat="server" Text="Lorem, ipsum"></asp:Label>
           <asp:Label ID="User_bio" class="user_bio" runat="server" Text=""></asp:Label>
          </div>
        </div>
      </div>
    </header>

    <div class="tab">
      <div class="container">
        <button class="tablinks" onclick="openCity(event, 'profile')">
          Profile</button>
        <button class="tablinks" onclick="openCity(event, 'my_posts')">
          My posts
        </button>
        <button class="tablinks" onclick="openCity(event, 'posts_I_Liked')">
          Posts I Liked
        </button>
      </div>
    </div>

    <div id="profile" class="tabcontent">
      <div class="container">
        <h2><br/>Informations sur le profil</h2>
            <p>name</p>  
            <div class="field name_field">
                    <asp:TextBox ID="Input_Name" type="text" name="email" class="input"
                         Text="Lorem, ipsum" placeholder="Email" 
                         runat="server" required></asp:TextBox>
            </div>
            <p>bio</p>
            <div class="field bio_field">
                <textarea id="Input_bio" name="bio" class="input" cols="50" rows="5"></textarea>
                <asp:HiddenField runat="server" ID="bio_asp_value" Value="" />
            </div>
            <asp:Button class="button" ID="change_profile" 
                 OnClick="change_profile_Click"  runat="server" Text="mettre à jour le profil" />
        <h2><br/>Changer le mot de passe</h2>
            <div class="field">
                <asp:TextBox ID="change_mdps_orgn" type="password" class="input" 
                        placeholder="Ancien mot de passe" runat="server" ></asp:TextBox>
            </div>
            <div class="field">
                <asp:TextBox ID="change_mdps_config" type="password" class="input" 
                        placeholder="Nouveau mot de passe" runat="server" ></asp:TextBox>
            </div>
            <div class="field">
                <asp:TextBox ID="change_mdps_config2" type="password" class="input" 
                        placeholder="Confirmer le nouveau mot de passe" runat="server" ></asp:TextBox>
            </div>
            <asp:Button class="button" ID="Button1" runat="server" 
                    OnClick="change_mdps_Click"  Text="mettre à jour le mot de passe" />
        <h2><br />Zone dangereuse</h2>
            <asp:Button class="button danger" ID="Button3" runat="server" Text="supprimer mon compte" />
      </div>
    </div>
 <div id="my_posts" class="tabcontent">
    <div class="box"></div>
        <div class="container">
          <div class="filter">
  <%--          <label for="cars">Choose a type:</label>
            <select name="option" id="option">
              <option value="web">web</option>
              <option value="design">design</option>
              <option value="server side">server side</option>
              <option value="mobile">mobile</option>
            </select>--%>
           </div>
        <div class="grid" id="my_post" runat="server">
        </div>
      </div>
    </div>

    <div id="posts_I_Liked" class="tabcontent">
      <div class="box"></div>
        <div class="container">
          <div class="filter">
  <%--          <label for="cars">Choose a type:</label>
            <select name="option" id="Select1">
              <option value="web">web</option>
              <option value="design">design</option>
              <option value="server side">server side</option>
              <option value="mobile">mobile</option>
            </select>--%>
           </div>
        <div class="grid" id="post_I_liked" runat="server">
        </div>
      </div>
    </div>
    
    <%-- ***************************************** --%>
        <asp:ScriptManager EnablePageMethods="true" 
            ID="MainSM" runat="server" ScriptMode="Release"
            LoadScriptsBeforeUI="true"></asp:ScriptManager>
    <%-- ***************************************** --%>


    <div class="box"></div>
    <script src="js/index.js" lang="javascript" type="text/javascript" ></script>
    <script lang="javascript" type="text/javascript" >
        var bio = document.getElementById('Input_bio');
        var bio_asp = document.getElementById("<%=bio_asp_value.ClientID%>");
        var change_profile = document.getElementById('change_profile');
        var btns = document.querySelectorAll('.post_details');

        bio.addEventListener('keyup', function (e) {
            bio_asp.value = bio.value;
            console.log("bio_aps:" + bio_asp.value);
        });

        bio.value = `<%= User_Bio_Input %>`;
        bio_asp.value = `<%= User_Bio_Input %>`;
        window.onload = function () {
            bio.value = `<%= User_Bio_Input %>`;            
        };

        for (var i = 0; i < btns.length; i++) {
            btns[i].addEventListener('click', clicked);
        }

        function clicked(e) {
            e.preventDefault();
            var id = e.target.id;
            PageMethods.id_Session(id);
            //
            console.log(e.target.id);
            location.href = "PostInfo.aspx";
            console.log(id);
        }
    </script>
</form>
</body>
</html>
