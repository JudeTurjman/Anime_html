using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Security.Policy;
using static System.Net.Mime.MediaTypeNames;


namespace project_2.HTMLPages
{
    public partial class ChForm : System.Web.UI.Page
    {

        public string st = "";
        public string Merror = "";
        public string yearsBorn = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {

                string uname = Request.Form["UName"];
                string fname = Request.Form["FName"];
                string lname = Request.Form["LName"];
                string email = Request.Form["Email"];
                string gender = Request.Form["Gender"];
                string yearBorn = Request.Form["YearBorn"];
                string city = Request.Form["City"];
                string prefix = Request.Form["Prefix"];
                string phone = Request.Form["Phone"];
                String password = Request.Form["Password"];
                string hobbies = Request.Form["Hobby"];

                // تحويل سنة الولادة الى عدد
                int yearB = int.Parse(yearBorn);

                // فحص الهوايات وتحويلها الى صحيح او خطأ
                char ch1 = 'F', ch2 = 'F', ch3 = 'F', ch4 = 'F', ch5 = 'F';

                if(hobbies != null)
                {
                    if (hobbies.Contains("Playing Sports")) ch1 = 'T';
                    if (hobbies.Contains("Reading")) ch2 = 'T';
                    if (hobbies.Contains("Drawing")) ch3 = 'T';
                    if (hobbies.Contains("Rizzing")) ch4 = 'T';
                    if (hobbies.Contains("Edging")) ch5 = 'T';
                }

                //ربط لقاعدة البيانات
                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";

                //فحص اذا كان اسم المستخدم مستعمل بقاعدة البيانات
                string sqlSelect = "SELECT * FROM " + tableName + " WHERE UName ='" + uname + "'";
                string sqlInsert;

                if (Helper.IsExist(fileName, sqlSelect))
                {
                    Merror = "The Username has Already been taken";
                }
                else
                {
                    sqlInsert = "INSERT INTO usersTbl";
                    sqlInsert += " VALUES ('" + uname + "','" + fname + "','" + lname + "','" + email + "','" + yearB + "','";
                    sqlInsert += gender + "','" + prefix + "','" + phone + "','" + city + "','";
                    sqlInsert += ch1 + "','" + ch2 + "','" + ch3 + "','" + ch4 + "','" + ch5 + "','" + password + "')";
                    Helper.DoQuery(fileName, sqlInsert);


                    Merror = "Successfully Signed Up to my Website!";
                    st = "<table align = 'center' dir='ltr' >";
                    st += "<tr><th><h3 style='color: goldenrod;' > The details received from the server </h3></th></tr > ";
                    st += $"<tr align = 'center' ><td style='border: 0px solid silver;' >User name : {uname}</td></tr > ";
                    st += $"<tr align = 'center' ><td style='border: 0px solid silver;' >First name : {fname}</td></tr>";
                    st += $"<tr align = 'center' ><td style='border: 0px solid silver;' >Last name : {lname}</td></tr>";
                    st += $"<tr align = 'center' ><td style='border: 0px solid silver;' >Email : {email}</td></tr>";
                    st += $"<tr align = 'center' ><td style='border: 0px solid silver;' >Gender : {gender}</td></tr>";
                    st += $"<tr align = 'center' ><td style='border: 0px solid silver;' >Year Born : {yearBorn}</td></tr>";
                    st += $"<tr align = 'center' ><td style='border: 0px solid silver;' >Phone number : {prefix} - {phone}</td ></ tr > ";
                    st += $"<tr align = 'center' ><td style='border: 0px solid silver;' >City : {city}</td></tr>";
                    st += $"<tr align = 'center' ><td style='border: 0px solid silver;' >Hobbies : {hobbies}</td></tr>";
                    st += "</table>";

                    Application.Lock();

                    // Increase the Login Counter by one!
                    Application["counter"] = (int)Application["counter"] + 1;

                    Application.UnLock();

                    Session["UName"] = uname;
                    Session["FName"] = fname;

                    Response.Redirect("AnimeWMP.aspx");
                }

            }

            int year = DateTime.Now.Year;
            int from = year - 70;
            int to = year - 10;
            for (int i = from; i <= to; i++)
            {
                yearsBorn += "<option value='" + i + "'>" + i + "</option>";
            }

        }
    }
}