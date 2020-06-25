<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="find_your_road.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/home.css">
</head>
<body class="dropbtn">
    <form id="form1" runat="server">
    <nav>
      <a href="PostEditor.aspx" class="new_post">+ new post</a>
      <div class="dropdown">
        <img src="imgs/avatar.jpg" alt="avatar" width="55" height="55" class="dropbtn img" />
        <div class="dropdown-content">
          <a href="UserInfo.aspx">profile</a>
          <a href="PostEditor.aspx">+ new post</a>
          <a href="Sign In.aspx">log out</a>
        </div>
      </div>
    </nav>
    <main>
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
        <div id="grid" class="grid" runat="server">
        </div>
        </div>
    </div>
    </main>
        <asp:ScriptManager EnablePageMethods="true" 
            ID="MainSM" runat="server" ScriptMode="Release" LoadScriptsBeforeUI="true"></asp:ScriptManager>
    <div class="box"></div>
    <script lang="javascript" type="text/javascript" >
        //var gid = document.querySelector('grid');

        var cards = document.querySelectorAll('.button');
        for (var i = 0; i < cards.length; i++) {
            cards[i].addEventListener('click', clicked)
        }

        function clicked(e) {
            e.preventDefault();
            var id = e.target.id;
            PageMethods.id_Session(id);
            //
            console.log(e.target.id);
            location.href = "PostInfo.aspx";
        };
    </script>
    </form>
</body>
</html>
