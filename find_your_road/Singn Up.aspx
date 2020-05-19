<%@ Page Title="" Language="C#" MasterPageFile="~/LoginSingnUp.Master" AutoEventWireup="true" CodeBehind="Singn Up.aspx.cs" Inherits="find_your_road.Singn_Up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Sing Up
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Sing Up</h2>
    <div class="field">
        <input type="name" name="name" class="input" placeholder="Nom" required/>
    </div>

    <div class="field">
        <input type="email" name="email" class="input" placeholder="Email" required />
    </div>
    
    <div class="field">
        <input type="password" name="password" class="input" placeholder="Mot de pass" required/>
    </div>
    
    <div class="field">
        <input type="password" name="password" class="input" placeholder="Confirmez le mot de passe" required/>
    </div>
    <br />
    <button type="submit">sing up</button>
</asp:Content>
