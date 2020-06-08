<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostEditor.aspx.cs" Inherits="find_your_road.PostEditor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--<link
      rel="stylesheet"
      href="css/main.css"
    />--%>
    <style>
         .name_field{
            margin: 0rem 0 1rem;
            transition: 500ms;
         }

        .bio_field{
            margin: 0rem 0 1rem;
            transition: 500ms;
         }
        textarea:not {
            font-family:  'Montserrat', sans-serif;
            color: #333 !important;
        }

        input[type="text"] {
            color: #333 !important;
        }
        .home_link {
            text-decoration: none;
            padding: 0.75rem 1.5rem;
            background: #333;
            color: white;
            position: fixed;
            border-radius: 25px;
            right: 2rem;
            top: 0.7rem;
            transition: all ease-in 0.3s;
            box-shadow: 4px 8px 22px -22px rgba(128, 128, 128, 0.45);
        }

        .home_link:hover {
            opacity: 0.8;
        }
        .button {
            padding: 0.7rem 1rem;
            text-decoration: none;
            transition: all ease-in 0.3s;
            color: #FFFFFF;
            text-align:end;
            background: #444;
            border :none;
            border-radius: 15px;
            cursor: pointer;
            font-size: .9rem;
            transition: all ease-in 0.3s;
        }
        .btnGreen {
            background: #2ebc4f;
        }
        #h1 {
            text-align: center;
            margin: 4rem auto 0rem;
        }
        hr {
            margin-bottom: 4rem;
        }
        .filter {
            text-align: left;
        }
    </style>
     <link
      rel="stylesheet"
      href="css/simplemd.min.css"
    />
</head>
<body>
    <form id="form1" runat="server">  
        
          
    <a  class="home_link" href="Home.aspx">Home</a>
        
    <h1 id="h1" style="">Post Editor</h1>
    <div class="container no">
        <hr />
       <h4>titre</h4>  
       <div class="field name_field">
            <asp:TextBox ID="TextBox1" type="text" name="email" class="input" 
                Text="Lorem, ipsum" placeholder="Email" runat="server" required></asp:TextBox>
       </div>
        <br />
       <h4>info</h4>
       <div class="field bio_field">
            <textarea name="bio" class="input" 
                id="Textarea1" cols="50" rows="2" required>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic error labore fuga nobis. Non fuga ipsa sit nulla atque? Ipsa eos atque quaedolore eligendi harum ratione voluptatum aliquid consequuntur?</textarea>
       </div>
        <br />
        <h6>markdown editor</h6>
      <textarea name="" id="markdown"></textarea>
    </div>



    <div class="container">
        <div class="filter">
            <b>Choisissez un type:</b>
            <select name="option" id="option">
                <option value="web">web</option>
                <option value="design">design</option>
                <option value="server side">server side</option>
                <option value="mobile">mobile</option>
            </select>
        </div>
        <br />
        <hr style="margin-bottom: 2rem;"/>
        <asp:Button class="button" ID="Button1" runat="server" Text="téléverser un fichier" />
        <asp:Button class="button btnGreen" ID="Button2" runat="server" Text="enregistrer et publier" />
    </div> 
        
    <div class="box"></div>
    </form>
    <script src="js/simplemd.min.js"></script>
    <script>
        var simplemde = new SimpleMDE({ element: document.getElementById("markdown") });
    </script>
</body>
</html>
