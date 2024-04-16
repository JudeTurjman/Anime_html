<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="project_2.HTMLPages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../Css.Staly.Pages/StylePage.css" rel="stylesheet" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h1> Login with account :</h1>
    <form method="post" runat="server">

    <table style="width:auto;height:auto;">

        <tr style="border: 0px solid silver;">
            <td style="border: 0px solid silver; text-align:center;">
                User name:
                <input type="text" name="username" required/>
            </td>
        </tr>

        <tr style="border: 0px solid silver;">
            <td style="border: 0px solid silver;text-align:center;">
                Password :&nbsp;
                <input type="password" name="password" required/>
            </td>
        </tr>

        <tr style="border: 0px solid silver;">
            <td style="text-align:center; border: 0px solid silver;">
                <input type="submit" name="submit" value="Login" />
            </td>
        </tr>

    </table>

    </form>

    <br />
    <h2 style="font-size:xx-large">
       <% Response.Write(msg); %> 
    </h2>


</asp:Content>
