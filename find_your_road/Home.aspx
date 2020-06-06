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
      <a href="#" class="new_post">+ new post</a>
      <img src="imgs/avatar.jpg" width="55" height="55" />
      <ul class="dropdown-content hidden img">
        <li><a href="medlemmer.html">profile</a></li>
        <li><a href="#">new post</a></li>
        <li><a href="#">log out</a></li>
      </ul>
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
        <div class="grid">
          <div>1</div>
          <div>2</div>
          <div>3</div>
          <div>4</div>
          <div>5</div>
          <div>6</div>
          <div>7</div>
          <div>8</div>
          <div>8</div>
          <div>8</div>
          <div>8</div>
          <div>8</div>
        </div>
      </div>
    </main>

        <div class="dropdown">
  <button class="myFunction" class="dropbtn">Dropdown</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="#home">Home</a>
    <a href="#about">About</a>
    <a href="#contact">Contact</a>
  </div>
</div>
    </form>
    <%--<script src="js/home.js"></script>
    <script>
        /* When the user clicks on the button, 
        toggle between hiding and showing the dropdown content */
        var btn = document.getElementsByClassName("myFunction");
        btn.addEventListener("click", function (event) {
            event.preventDefault();
            document.getElementById("myDropdown").classList.toggle("show");
        });

        // Close the dropdown if the user clicks outside of it
        window.onclick = function (event) {
            if (!event.target.matches('.dropbtn')) {
                var dropdowns = document.getElementsByClassName("dropdown-content");
                var i;
                for (i = 0; i < dropdowns.length; i++) {
                    var openDropdown = dropdowns[i];
                    if (openDropdown.classList.contains('show')) {
                        openDropdown.classList.remove('show');
                    }
                }
            }
        }
</script>--%>
</body>
</html>
