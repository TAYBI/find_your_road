<%@ Page Title="" Language="C#" MasterPageFile="~/LoginSingnUp.Master" AutoEventWireup="true" CodeBehind="Sign In.aspx.cs" Inherits="find_your_road.Sign_In" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Sing In
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2>Sign In</h2>
    <div class="field">
        <asp:TextBox ID="email" type="email" name="email" class="input" placeholder="Email" runat="server" required></asp:TextBox>
    </div>
    
    <div class="field">
        <asp:TextBox ID="motpass" type="password" name="password" class="input" placeholder="Mot de pass" runat="server" required></asp:TextBox>
    </div>
    <label class="container">Rester connecté
        <input type="checkbox" checked="checked" />
        <span class="checkmark"></span>
    </label>
     
    <br />
    <asp:Button class="button" type="submit" ID="Button1" runat="server" Text="sing in" OnClick="Button1_Click" />
    <%--<button type="submit">sing in</button>--%>
</asp:Content>
