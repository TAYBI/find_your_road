﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="find_your_road.UserInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/main.css" />
    <link rel="stylesheet" href="css/user_profile.css" />
    <title>Document</title>
</head>
<body>
 <header>
      <div class="container">
        <div class="user_info">
          <div class="avatar">
            <img src="imgs/avatar.jpg" width="150" height="150" />
          </div>
          <div class="user_personel_info">
            <h2 class="user_name">Lorem, ipsum.</h2>
            <!-- <h3 class="user_email">example@example.com</h3> -->
            <p class="user_bio">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic error
              labore fuga nobis. Non fuga ipsa sit nulla atque? Ipsa eos atque
              quae dolore eligendi harum ratione voluptatum aliquid
              consequuntur?
            </p>
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
        <h2>Informations sur le profil</h2>
        <hr />
        <p>name</p>
        <input type="text" value="Lorem, ipsum" />
        <p>bio</p>
        <textarea name="bio" value="" id="" cols="50" rows="5">
  Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic error labore fuga nobis. Non fuga ipsa sit nulla atque? Ipsa eos atque quaedolore eligendi harum ratione voluptatum aliquid consequuntur?</textarea
        >
        <br />
        <button type="submit">mettre à jour le profil</button>
        <h2>Changer le mot de passe</h2>
        <hr />
        <p>Ancien mot de passe</p>
        <input type="password" />
        <p>Nouveau mot de passe</p>
        <input type="password" />
        <p>Confirmer le nouveau mot de passe</p>
        <input type="password" />
        <br />
        <button type="submit">mettre à jour le mot de passe</button>
      </div>
    </div>

    <div id="my_posts" class="tabcontent">
      <div class="container">
        <h3>My posts</h3>
        <p>My posts is the capital of France.</p>
      </div>
    </div>

    <div id="posts_I_Liked" class="tabcontent">
      <div class="container">
        <h3>Posts I Liked</h3>
        <p>Posts I Liked is the capital of Japan.</p>
      </div>
    </div>

    <script src="js/index.js" lang="javascript" type="text/javascript" ></script>
</body>
</html>
