<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="QuerySimple.aspx.cs" Inherits="project_2.HTMLPages.QuerySimple" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../Css.Staly.Pages/StylePage.css" rel="stylesheet" />
    <script src="../JavaScript/AdminQuerySimple.js"></script>

        <style>
        .table1{
            width:22%;
            text-align:center;
            border: 1px solid silver;
            border-color:goldenrod;
        }
        .table2{
            width:7%;
            text-align:center;
            border: 1px solid silver;
            border-color:goldenrod;
        }
        .table3{
            width:7%;
            text-align:center;
            border: 1px solid silver;
            border-color:goldenrod;
        }
        .table4{
            width:23%;
            text-align:center;
            border: 1px solid silver;
            border-color:goldenrod;
        }
        .table5{
            width:3%;
            text-align:center;
            border: 1px solid silver;
            border-color:goldenrod;
        }
        .table6{
            width:8%;
            text-align:center;
            border: 1px solid silver;
            border-color:goldenrod;
        }
        .table7{
            width:4%;
            text-align:center;
            border: 1px solid silver;
            border-color:goldenrod;
        }
        .table8{
            width:9%;
            text-align:center;
            border: 1px solid silver;
            border-color:goldenrod;
        }
        .table9{
            width:2%;
            text-align:center;
            border: 1px solid silver;
            border-color:goldenrod;
        }
        .table10{
            width:2%;
            text-align:center;
            border: 1px solid silver;
            border-color:goldenrod;
        }
        .table11{
            width:2%;
            text-align:center;
            border: 1px solid silver;
            border-color:goldenrod;
        }
        .table12{
            width:2%;
            text-align:center;
            border: 1px solid silver;
            border-color:goldenrod;
        }
        .table13{
            width:2%;
            text-align:center;
            border: 1px solid silver;
            border-color:goldenrod;
        }
        .table14{
            width:7%;
            text-align:center;
            border: 1px solid silver;
            border-color:goldenrod;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Users Data as required :</h1>

    <form method="post" runat="server" style="text-align:center;">
        <select name="field"; id="field"; onclick="DetectField();">
            <option>Choose :</option>
            <option value="FName">First Name</option>
            <option value="LName">Last Name</option>
            <option value="Email">Email</option>
            <option value="YearBorn">Year Born</option>
            <option value="Gender">Gender</option>
            <option value="Prefix">Prefix</option>
            <option value="Phone">Phone</option>
            <option value="City">City</option>
            <option value="Hobby">Hobby</option>
        </select>
        <br />
        <div id="query"></div>
        <br />
        <input type="submit"; name="submit"; value="Search" />
    </form>

    <h2><%= sql %></h2>

    <%= st %>

    <h2 style="font-size:16pt">
        <%= msg %>
    </h2>


</asp:Content>
