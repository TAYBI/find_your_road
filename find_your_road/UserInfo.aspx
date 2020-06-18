﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="find_your_road.UserInfo" %>

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
            <%--<img src="imgs/avatar.jpg" width="150" height="150" />--%>
            <asp:ImageButton ID="User_Avatar" ImageUrl="~/imgs/avatar.jpg" runat="server" Height="150px" Width="150px" />
          </div>
          <div class="user_personel_info">
           <asp:Label ID="User_name" class="user_name" runat="server" Text="Lorem, ipsum"></asp:Label>
           <asp:Label ID="User_bio" class="user_bio" runat="server" Text="Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic error labore fuga nobis. Non fuga ipsa sit nulla atque? Ipsa eos atque quae dolore eligendi harum ratione voluptatum aliquid consequuntur?"></asp:Label>
              <%--<h2 class="user_name">.</h2>--%>
            <!-- <h3 class="user_email">example@example.com</h3> -->
              <%--<p class="user_bio">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic error
              labore fuga nobis. Non fuga ipsa sit nulla atque? Ipsa eos atque
              quae dolore eligendi harum ratione voluptatum aliquid
              consequuntur?
            </p>--%>
          </div>
        </div>
      </div>
    </header>

    <div class="tab">
      <div class="container">
        <button class="tablinks" onclick="openCity(event, 'profile')">
          Profile
        </button>
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
                    <asp:TextBox ID="Input_Name" type="text" name="email" class="input" Text="Lorem, ipsum" placeholder="Email" runat="server" required></asp:TextBox>
            </div>
            <p>bio</p>
            <div class="field bio_field">
                <textarea id="Input_bio" name="bio" class="input" id="" cols="50" rows="5">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic error labore fuga nobis. Non fuga ipsa sit nulla atque? Ipsa eos atque quaedolore eligendi harum ratione voluptatum aliquid consequuntur?</textarea>
            </div>
            <asp:Button class="button"  ID="Button2" runat="server" Text="mettre à jour le profil" />
        <h2><br/>Changer le mot de passe</h2>
            <div class="field">
                    <asp:TextBox ID="TextBox2" type="password" class="input" placeholder="Ancien mot de passe" runat="server" ></asp:TextBox>
            </div>
            <div class="field">
                    <asp:TextBox ID="TextBox3" type="password" class="input" placeholder="Nouveau mot de passe" runat="server" ></asp:TextBox>
            </div>
            <div class="field">
                    <asp:TextBox ID="TextBox4" type="password" class="input" placeholder="Confirmer le nouveau mot de passe" runat="server" ></asp:TextBox>
            </div>
            <asp:Button class="button" ID="Button1" runat="server" Text="mettre à jour le mot de passe" />
        <h2><br />Zone dangereuse</h2>
            <asp:Button class="button danger" ID="Button3" runat="server" Text="supprimer mon compte" />
      </div>
    </div>

    <div id="my_posts" class="tabcontent">
    <div class="box"></div>
        <div class="container">
          <div class="filter">
            <label for="cars">Choose a type:</label>
            <select name="option" id="option">
              <option value="web">web</option>
              <option value="design">design</option>
              <option value="server side">server side</option>
              <option value="mobile">mobile</option>
            </select>
           </div>
        <div class="grid">
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink20" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink1" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink2" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink3" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink4" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink5" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink6" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink7" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink8" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink9" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink10" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink11" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink12" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink13" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink14" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink15" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink16" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink17" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink18" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink19" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink21" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>        
        </div>
      </div>
    </div>

    <div id="posts_I_Liked" class="tabcontent">
      <div class="box"></div>
        <div class="container">
          <div class="filter">
            <label for="cars">Choose a type:</label>
            <select name="option" id="Select1">
              <option value="web">web</option>
              <option value="design">design</option>
              <option value="server side">server side</option>
              <option value="mobile">mobile</option>
            </select>
           </div>
        <div class="grid">
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink22" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink23" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink24" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink25" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink26" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink27" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink28" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink29" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink30" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink31" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink32" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink33" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink34" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink35" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink36" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink37" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink38" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink39" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink40" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink41" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
            <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink42" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
        </div>
      </div>
    </div>
    
    <div class="box"></div>
    <script src="js/index.js" lang="javascript" type="text/javascript" ></script>
    <script lang="javascript" type="text/javascript" >
        var bio = document.getElementById('Input_bio');
        console.log(bio)
        bio.value = "<%= User_Bio_Input %>";
    </script>
</form>
</body>
</html>
