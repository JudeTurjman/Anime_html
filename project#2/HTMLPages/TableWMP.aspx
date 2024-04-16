<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TableWMP.aspx.cs" Inherits="project_2.HTMLPages.TableWMP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../Css.Staly.Pages/StylePage.css" rel="stylesheet" />

    <style >
        .auto-style1 {
            width: 15%;
        }
        .auto-style7{
            width: 15%;
        }
        .auto-style2 {
            width: 15%;
        }
        .auto-style3 {
            width: 12.5%;
        }
        .auto-style4 {
            width: 12.5%;
        }
        .auto-style5 {
            width: 15%;
        }
        .auto-style6 {
            width: 15%;
        }
    </style>

     <style>
         table {
             direction: ltr;
             border-spacing: 1px;
             background-color: firebrick;
             border: 1px solid;
             padding:3px;
         }

         th {
             background-color: lawngreen;
             border: 1px solid;
             font-size: 16pt;
         }

         td {
             border: 1px solid;
             font-size: 16pt;
             background-color: white;
         }

         ol {
             font-style: italic;
             font-size: 18pt;
         }

     </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
 <h2> Anime News </h2>
 <h3> This table was last modified in 24.03.2024 </h3>
 <br />
 <table>
    <tr>
        <th class="auto-style1"> Anime Name </th>
        <th class="auto-style2"> Top Anime on MyAnimeList.net</th>
        <th class="auto-style7"> Top Manga on MyAnimeList.net</th>
        <th class="auto-style3"> Anime </th>
        <th class="auto-style4"> Manga </th>
        <th class="auto-style5"> Current number of episodes </th>
        <th class="auto-style6"> Current number of chapters </th>
    </tr>
    <tr>
        <th class="auto-style1"> One Piece </th>
        <td class="auto-style2"> 50 </td>
        <td class="auto-style7"> 4 </td>
        <td style=" background-color: lightgreen;" colspan="2"> continuous </td>
        <td style=" background-color: lightgreen;" class="auto-style5"> 1098 </td>
        <td style=" background-color: lightgreen;"> 1111 </td>
    </tr>
    <tr>
        <th class="auto-style1"> Vinland Saga </th>
        <td class="auto-style2"> 31 </td>
        <td class="auto-style7"> 7 </td>
        <td style=" background-color: lightcoral;" class="auto-style3"> Stopped </td>
        <td style=" background-color: lightgreen;" class="auto-style4"> continuous </td>
        <td style=" background-color: lightcoral;" class="auto-style5"> 48 </td>
        <td style=" background-color: lightgreen;"> 216 </td>
    </tr>
    <tr>
        <th class="auto-style1"> Attack on Titan </th>
        <td class="auto-style2"> 5 </td>
        <td class="auto-style7"> 115 </td>
        <td style=" background-color: lightblue;" rowspan="2" class="auto-style3"> Finished </td>
        <td style=" background-color: lightblue;" rowspan="3" class="auto-style4"> Finished </td>
        <td style=" background-color: lightblue;" class="auto-style5"> 89 </td>
        <td style=" background-color: lightblue;"> 139 </td>
    </tr>
    <tr>
        <th class="auto-style1"> Naruto </th>
        <td class="auto-style2"> 290 </td>
        <td class="auto-style7"> 261 </td>
        <td style=" background-color: lightblue;" class="auto-style5"> 720 </td>
        <td style=" background-color: lightblue;"> >700 </td>
    </tr>
    <tr>
        <th class="auto-style1"> Bleach </th>
        <td class="auto-style2"> 9 </td>
        <td class="auto-style7"> 284 </td>
        <td style=" background-color: lightcoral;" class="auto-style3"> Stopped </td>
        <td style=" background-color: lightcoral;" class="auto-style5"> 392 </td>
        <td style=" background-color: lightblue;"> 686 </td>
    </tr>
    <tr>
        <th class="auto-style1"> HunterxHunter </th>
        <td class="auto-style2"> 7 </td>
        <td class="auto-style7"> 44 </td>
        <td style=" background-color: lightcoral;" colspan="2"> Stopped </td>
        <td style=" background-color: lightcoral;" class="auto-style5"> 148 </td>
        <td style=" background-color: lightcoral;"> 400 </td>
    </tr>
    <tr>
        <th class="auto-style1"> Blue Lock </th>
        <td class="auto-style2"> 277 </td>
        <td class="auto-style7"> 131 </td>
        <td style=" background-color: lightcoral;" rowspan="2" class="auto-style3"> Stopped </td>
        <td style=" background-color: lightgreen;" rowspan="2" class="auto-style4"> continuous </td>
        <td style=" background-color: lightcoral;" class="auto-style5"> 24 </td>
        <td style=" background-color: lightgreen;"> 255 </td>
    </tr>
    <tr>
        <th class="auto-style1"> Baki </th>
        <td class="auto-style2"> 622 </td>
        <td class="auto-style7"> 516 </td>
        <td style=" background-color: lightcoral;" class="auto-style5"> 126 </td>
        <td style=" background-color: lightgreen;"> 1304 </td>
    </tr>
    <tr>
        <th class="auto-style1"> Death Note </th>
        <td class="auto-style2"> 82 </td>
        <td class="auto-style7"> 52 </td>
        <td style=" background-color: lightblue;" colspan="2"> Finished </td>
        <td style=" background-color: lightblue;" class="auto-style5"> 37 </td>
        <td style=" background-color: lightblue;"> 108 </td>
    </tr>
    <tr>
        <th class="auto-style1"> Berserk </th>
        <td class="auto-style2"> 92 </td>
        <td class="auto-style7"> 1 </td>
        <td style=" background-color: lightcoral;" class="auto-style3"> Stopped </td>
        <td style=" background-color: lightgreen;" class="auto-style4"> continuous </td>
        <td style=" background-color: lightcoral;" class="auto-style5"> 25 </td>
        <td style=" background-color: lightgreen;"> 390 </td>
    </tr>

</table>

</asp:Content>
