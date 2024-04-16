<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditUserInfo.aspx.cs" Inherits="project_2.HTMLPages.EditUserInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="../JavaScript/Signup.js"></script>
    <link href="../Css.Staly.Pages/StylePage.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1> The details you put :</h1>
    <form method="post" runat="server" onsubmit="return CheckForm();">

        <table style="width:auto;height:auto;">

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver; text-align:center;">
                    User name:
                    <input type="text" id="UName" name="UName" disabled="disabled" value="<%= uName %>"/>
                    <input type="text" id="mUName" size="18" style="display:none; background-color:silver; color:firebrick" disabled="disabled" />
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;">
                    First name:
                    <input type="text" id="FName" name="FName" value="<%= fName %>" required/>
                    <input type="text" id="mFName" size="18" style="display:none; background-color:silver; color:firebrick" disabled="disabled" />
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;">
                    Last name:
                    <input type="text" id="LName" name="LName" value="<%= lName %>" required/>
                    <input type="text" id="mLName" size="18" style="display:none; background-color:silver; color:firebrick" disabled="disabled" />
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;">
                    Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="email" id="Email" name="Email" value="<%= email %>" required/>
                    <input type="text" id="mEmail" size="18" style="display:none; background-color:silver; color:firebrick" disabled="disabled" />
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;" id="Gender">
                    Gender :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                    <% if (gender == "male")
                        {%>
                        <input type="radio" name="Gender" value="male" checked /> male &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="Gender" value="female" /> female
                    <%}
                        else
                        {%>
                         <input type="radio" name="Gender" value="male" /> male &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <input type="radio" name="Gender" value="female" checked /> female
                    <%} %>
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;">
                    Year Born : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <select name="YearBorn">
                        <%= yrBorn %>
                    </select>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;">
                    City :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <select name="City">
                        <%= Citystr %>
                    </select>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;">
                    Phone number:
                </td>
            </tr>
            
            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;">
                    <select name="Prefix">
                        <% if (prefix == "050")
                            {%>
                            <option value="050" selected> 050 </option>
                        <%}else {%> <option value="050"> 050 </option> <%} %>

                        <% if (prefix == "051")
                            {%>
                            <option value="051" selected> 051 </option>
                        <%}else {%> <option value="051"> 051 </option> <%} %>

                        <% if (prefix == "052")
                            {%>
                            <option value="052" selected> 052 </option>
                        <%}else {%> <option value="052"> 052 </option> <%} %>

                        <% if (prefix == "053")
                            {%>
                            <option value="053" selected> 053 </option>
                        <%}else {%> <option value="053"> 053 </option> <%} %>

                        <% if (prefix == "054")
                            {%>
                            <option value="054" selected> 054 </option>
                        <%}else {%> <option value="054"> 054 </option> <%} %>

                        <% if (prefix == "055")
                            {%>
                            <option value="055" selected> 055 </option>
                        <%}else {%> <option value="055"> 055 </option> <%} %>

                        <% if (prefix == "056")
                            {%>
                            <option value="056" selected> 056 </option>
                        <%}else {%> <option value="056"> 056 </option> <%} %>
                        <% if (prefix == "057")
                            {%>
                            <option value="057" selected> 057 </option>
                        <%}else {%> <option value="057"> 057 </option> <%} %>

                        <% if (prefix == "058")
                            {%>
                            <option value="058" selected> 058 </option>
                        <%}else {%> <option value="058"> 058 </option> <%} %>

                        <% if (prefix == "059")
                            {%>
                            <option value="059" selected> 059 </option>
                        <%}else {%> <option value="050"> 059 </option> <%} %>
                   </select>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <input type="number" id="Phone" name="Phone" value="<%= phone %>" required/>
                   <input type="text" id="mPhone" size="18" style="display:none; background-color:silver; color:firebrick" disabled="disabled" />
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;">
                   Hobbies :
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;">
                    <% if (hob1 == "T")
                        {%>
                        <input type="checkbox" value="Playing Sports" name="Hobby" checked="checked" /> Playing Sports
                        &nbsp;
                    <%}else{%><input type="checkbox" value="Playing Sports" name="Hobby" /> Playing Sports&nbsp;<%} %>
                    <% if (hob2 == "T")
                        {%>
                        <input type="checkbox" value="Reading" name="Hobby" checked="checked" /> Reading&nbsp;
                    <%}else{%><input type="checkbox" value="Reading" name="Hobby" /> Reading&nbsp;<%} %>
                    <% if (hob3 == "T")
                        {%>
                        <input type="checkbox" value="Drawing" name="Hobby" checked="checked"/> Drawing
                    <%}else{%><input type="checkbox" value="Drawing" name="Hobby" /> Drawing<%} %>
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;">
                    <% if (hob4 == "T")
                        {%>
                        <input type="checkbox" value="Rizzing" name="Hobby" checked="checked" /> Rizzing&nbsp;
                    <%}else{%><input type="checkbox" value="Rizzing" name="Hobby" /> Rizzing&nbsp;<%} %>
                    <% if (hob5 == "T")
                        {%>
                        <input type="checkbox" value="Edging" name="Hobby" checked="checked" /> Edging
                    <%}else{%><input type="checkbox" value="Edging" name="Hobby" /> Edging<%} %>
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;">
                    Passward :
                    <input type="password" name="Password" id="Password" value="<%= pass %>" required/>
                    <input type="text" id="mPassword" size="18" style="display:none; background-color:silver; color:firebrick" disabled="disabled" />
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;">
                    Confirm : &nbsp;
                    <input type="password" name="Confirm" id="Confirm" value="<%= pass %>" required/>
                </td>
            </tr>
       
            <tr style="border: 0px solid silver;">
                <td style="text-align:center; border: 0px solid silver;">
                    <input type="submit" name="submit" value="Signup" />
                </td>
            </tr>

        </table>

    </form>

    <h2 style="font-size:xx-large">
         &nbsp;
        <%= msg %>
    </h2>

</asp:Content>
