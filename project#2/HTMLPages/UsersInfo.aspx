﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UsersInfo.aspx.cs" Inherits="project_2.HTMLPages.UsersInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../Css.Staly.Pages/StylePage.css" rel="stylesheet" />
    <style>
        .table1{
            width:23%;
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
            width:7%;
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

    <h1>Users table:</h1>

    <table style="border:double; border-color:goldenrod; height:auto">
        <%= stUT %>
    </table>

    <h2 style="font-size:16pt">
        <%= MusersNum %>
    </h2>

</asp:Content>
