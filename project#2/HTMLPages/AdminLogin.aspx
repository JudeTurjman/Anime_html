<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="project_2.HTMLPages.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../Css.Staly.Pages/StylePage.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1> Login with Admin account :</h1>
<form method="post" runat="server">

<table style="width:auto;height:auto;">

    <tr style="border: 0px solid silver;">
        <td style="border: 0px solid silver; text-align:center;">
            Admin Username :
            <input type="text" name="adminuName" required/>
        </td>
    </tr>

    <tr style="border: 0px solid silver;">
        <td style="border: 0px solid silver;text-align:center;">
            Admin Password :&nbsp;
            <input type="password" name="adminPass" required/>
        </td>
    </tr>

    <tr style="border: 0px solid silver;">
        <td style="text-align:center; border: 0px solid silver;">
            <input type="submit" name="submit" value="Login" />
        </td>
    </tr>

</table>

</form>
<h4 style="color:firebrick;text-align:center">
    <%= msg %>
</h4>

</asp:Content>
