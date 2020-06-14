<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostInfo.aspx.cs" Inherits="find_your_road.PostInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/main.css" />
    <style>
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

        h1, h2{
            margin: 1rem 0rem;
        }

        h3, h4, h5, h6 {
            margin: 0.5rem 0rem;        
        }

        .home_link:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="box"></div>
    <a  class="home_link" href="Home.aspx">Home</a>
    <div class="container">
        <h1>post info</h1>
    </div>
    <asp:HiddenField id="hdn" runat="server"></asp:HiddenField>
    </form>
    <div class="box"></div>
    <script src="js/mdtohtml.min.js"></script>
    <script>
        // Actual default values

        var md = new Remarkable({
            html: false, // Enable HTML tags in source
            xhtmlOut: false, // Use '/' to close single tags (<br />)
            breaks: false, // Convert '\n' in paragraphs into <br>
            linkify: false, // Autoconvert URL-like text to links

            // Enable some language-neutral replacement + quotes beautification
            typographer: false,

            // Double + single quotes replacement pairs, when typographer enabled,
            // and smartquotes on. Set doubles to '«»' for Russian, '„“' for German.
            quotes: "“”‘’",
        });
        var container = document.querySelector(".container");

        var md_ = `# Project Title

One Paragraph of project description goes here 

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them`; 
        //"<%
        //= html() %>";

        document.getElementById('<%=hdn.ClientID%>').value = "assign your javascript variable value here";
        var html = md.render(md_)
        container.innerHTML = html;
    </script>
</body>
</html>
