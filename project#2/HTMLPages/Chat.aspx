<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="project_2.HTMLPages.Chat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../Css.Staly.Pages/StylePage.css" rel="stylesheet" />
    <script src="../JavaScript/Chat.js"></script>
    <style>
        .table1{
            width:15%;
            border:0px;
            font-size:12pt
        }
        .table2{
            width:70%;
            border:0px;
            font-size:14pt;
            font-style: italic;
        }
        .table3{
            width:15%;
            border:0px;
            font-size:10pt
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 style="font-size:16pt">Users & Admin Chat :</h2>

    <form method="post" runat="server" onsubmit="return NoChat();">
        <table style="height:auto; border:0px;">
            <tr style="border:0px">
                <td style="border:0px; width:90%">
                    <input style="width:100%" type="text" name="textchat" id="textchat" />
                </td>
                <td style="border:0px; width:10%; text-align:center">
                    <input style="width:50%; " type="submit" name="submit" value="Post" />
                </td>
            </tr>
        </table>
    </form>

    <h4 style="color:firebrick;text-align:center">
        <input type="text" id="Error" size="18" style="display:none; color:firebrick;background-color:silver" disabled="disabled" />
        <%= Merror %>
    </h4>
    
    <table style="height:auto; border:0px;">
        <%= st %>
    </table>

    <div style="font-size:10pt; font-style:normal">
        <%= chatNum %>
    </div>
    

</asp:Content>
