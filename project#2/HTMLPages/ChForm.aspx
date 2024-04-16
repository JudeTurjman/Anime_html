<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChForm.aspx.cs" Inherits="project_2.HTMLPages.ChForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../Css.Staly.Pages/StylePage.css" rel="stylesheet" />
    <script src="../JavaScript/Signup.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1> Sign Up :</h1>
    <form method="post" runat="server" onsubmit="return CheckForm();">

        <table style="width:auto;height:auto;">

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver; text-align:center;">
                    User name:
                    <input type="text" id="UName" name="UName" required/>
                    <input type="text" id="mUName" size="18" style="display:none; background-color:silver; color:firebrick" disabled="disabled" />
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;">
                    First name:
                    <input type="text" id="FName" name="FName" required/>
                    <input type="text" id="mFName" size="18" style="display:none; background-color:silver; color:firebrick" disabled="disabled" />
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;">
                    Last name:
                    <input type="text" id="LName" name="LName" required/>
                    <input type="text" id="mLName" size="18" style="display:none; background-color:silver; color:firebrick" disabled="disabled" />
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;">
                    Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="email" id="Email" name="Email" required/>
                    <input type="text" id="mEmail" size="18" style="display:none; background-color:silver; color:firebrick" disabled="disabled" />
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;" id="Gender">
                    Gender :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" name="Gender" value="male" checked /> male &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" name="Gender" value="female" /> female
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;">
                    Year Born : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <select name="YearBorn">
                        <%= yearsBorn%>
                    </select>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;">
                    City :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <select name="City">
                        <option value="Nazareth"> Nazareth </option>
                        <option value="Safed"> Safed </option>
                        <option value="Afula"> Afula </option>
                        <option value="Haifa"> Haifa </option>
                        <option value="Tiberias"> Tiberias </option>
                        <option value="Karmiel"> Karmiel </option>
                        <option value="Acre"> Acre </option>
                        <option value="Netanya"> Netanya </option>
                        <option value="Nablus"> Nablus </option>
                        <option value="Tel Aviv"> Tel Aviv </option>
                        <option value="Ramallah"> Ramallah </option>
                        <option value="Jerusalem"> Jerusalem </option>
                        <option value="Ashkelon"> Ashkelon </option>
                        <option value="Gaza"> Gaza </option>
                        <option value="Beer Sheva"> Beer Sheva </option> 
                        <option value="Eilat"> Eilat </option>
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
                        <option value="050"> 050 </option>
                        <option value="051"> 051 </option>
                        <option value="052"> 052 </option>
                        <option value="053"> 053 </option>
                        <option value="054"> 054 </option>
                        <option value="055"> 055 </option>
                        <option value="056"> 056 </option>
                        <option value="057"> 057 </option>
                        <option value="058"> 058 </option>
                        <option value="059"> 059 </option>
                   </select>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <input type="number" id="Phone" name="Phone" required/>
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
                    <input type="checkbox" value="Playing Sports" name="Hobby" /> Playing Sports
                    &nbsp;
                    <input type="checkbox" value="Reading" name="Hobby" /> Reading
                    &nbsp;
                    <input type="checkbox" value="Drawing" name="Hobby" /> Drawing
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;">
                    <input type="checkbox" value="Rizzing" name="Hobby" /> Rizzing
                    &nbsp;
                    <input type="checkbox" value="Edging" name="Hobby" /> Edging
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;">
                    Password :
                    <input type="password" name="Password" id="Password" required/>
                    <input type="text" id="mPassword" size="18" style="display:none; background-color:silver; color:firebrick" disabled="disabled" />
                </td>
            </tr>

            <tr style="border: 0px solid silver;">
                <td style="border: 0px solid silver;text-align:center;">
                    Confirm : &nbsp;
                    <input type="password" name="Confirm" id="Confirm" required/>
                </td>
            </tr>
       
            <tr style="border: 0px solid silver;">
                <td style="text-align:center; border: 0px solid silver;">
                    <input type="submit" name="submit" value="Signup" />
                </td>
            </tr>

        </table>

    </form>

    <br />
    
    <h2 style="font-size:xx-large">
         &nbsp;
        <%= Merror %>
    </h2>


</asp:Content>
