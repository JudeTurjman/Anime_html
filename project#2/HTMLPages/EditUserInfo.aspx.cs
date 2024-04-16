using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_2.HTMLPages
{
    public partial class EditUserInfo : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlMsg = "";
        public string sqlSelect = "";
        public string UpdatedInfo = "";
        public string Citystr = "";
        public string yrBorn = "";
        public string uName, fName, lName, email, gender, phone, prefix, pass;
        public string yearBorn, city, hob1, hob2, hob3, hob4, hob5;

        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "usersDB.mdf";

            if (Session["UName"].ToString() == "Guest" || Session["admin"].ToString() == "admin")
            {
                Response.Redirect("AnimeWMP.aspx");
            }
            else
            {
                uName = Session["UName"].ToString();

                sqlSelect = "SELECT * FROM usersTbl WHERE UName= '" + uName + "'";
                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);
                sqlMsg = sqlSelect;
                int length = table.Rows.Count;
                if (length == 0)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {

                    // PreSelecting............
                    fName = table.Rows[0]["FName"].ToString().Trim();
                    lName = table.Rows[0]["LName"].ToString().Trim();
                    email = table.Rows[0]["Email"].ToString().Trim();
                    prefix = table.Rows[0]["Prefix"].ToString().Trim();
                    phone = table.Rows[0]["Phone"].ToString().Trim();
                    gender = table.Rows[0]["Gender"].ToString().Trim();
                    city = table.Rows[0]["City"].ToString().Trim();
                    hob1 = table.Rows[0]["Hob1"].ToString().Trim();
                    hob2 = table.Rows[0]["Hob2"].ToString().Trim();
                    hob3 = table.Rows[0]["Hob3"].ToString().Trim();
                    hob4 = table.Rows[0]["Hob4"].ToString().Trim();
                    hob5 = table.Rows[0]["Hob5"].ToString().Trim();
                    int yBorn = Convert.ToInt16(table.Rows[0]["YearBorn"].ToString().Trim());
                    pass = table.Rows[0]["Pass"].ToString().Trim();


                    // PreSelecting............
                    int year = DateTime.Now.Year;
                    int from = year - 60;
                    int to = year - 10;
                    for (int i = from; i <= to; i++)
                    {

                        if (i == yBorn)
                            yrBorn += $"<option value = '{i}' selected> {i} </option>";
                        else
                            yrBorn += "<option value = '" + i + "'>" + i + "</option>";

                    }

                    // PreSelecting............
                    string[] cities = { "Nazareth", "Safed", "Afula", "Haifa", "Tiberias", "Karmiel", "Acre", "Netanya", "Nablus", "Tel Aviv",
                     "Ramallah", "Jerusalem", "Ashkelon", "Gaza", "Beer Sheva", "Eilat" };

                    for (int i = 0; i < cities.Length; i++)
                    {
                        if (cities[i] == city)
                            Citystr += $"<option value ='{cities[i]}' selected>{cities[i]}</option>";
                        else
                            Citystr += $"<option value ='{cities[i]}'>{cities[i]}</option>";
                    }


                    if (this.IsPostBack)
                    {
                        fName = Request.Form["FName"];
                        lName = Request.Form["LName"];
                        email = Request.Form["Email"];
                        city = Request.Form["City"];
                        prefix = Request.Form["Prefix"];
                        phone = Request.Form["Phone"];
                        gender = Request.Form["Gender"];
                        yearBorn = Request.Form["YearBorn"];
                        pass = Request.Form["Password"];

                        string Hobies = Request.Form["Hobby"];
                        hob1 = "F";
                        hob2 = "F";
                        hob3 = "F";
                        hob4 = "F";
                        hob5 = "F";

                        if (Hobies != null)
                        {
                            if (Hobies.Contains("Playing Sports")) hob1 = "T";
                            if (Hobies.Contains("Reading")) hob2 = "T";
                            if (Hobies.Contains("Drawing")) hob3 = "T";
                            if (Hobies.Contains("Rizzing")) hob4 = "T";
                            if (Hobies.Contains("Edging")) hob5 = "T";
                        }



                        // Updating the newly entered User Info!!
                        UpdatedInfo = "UPDATE usersTbl ";
                        UpdatedInfo += "SET FName = '" + fName + "', ";
                        UpdatedInfo += "LName = '" + lName + "', ";
                        UpdatedInfo += "Email = '" + email + "', ";
                        UpdatedInfo += "YearBorn = '" + yearBorn + "', ";
                        UpdatedInfo += "Gender = '" + gender + "', ";
                        UpdatedInfo += "Prefix = '" + prefix + "', ";
                        UpdatedInfo += "Phone = '" + phone + "', ";
                        UpdatedInfo += "City = '" + city + "', ";
                        UpdatedInfo += "Hob1 = '" + hob1 + "', ";
                        UpdatedInfo += "Hob2 = '" + hob2 + "', ";
                        UpdatedInfo += "Hob3 = '" + hob3 + "', ";
                        UpdatedInfo += "Hob4 = '" + hob4 + "', ";
                        UpdatedInfo += "Hob5 = '" + hob5 + "', ";
                        UpdatedInfo += "Pass = '" + pass + "' ";
                        UpdatedInfo += "WHERE UName = '" + uName + "'";


                        Helper.DoQuery(fileName, UpdatedInfo);

                        msg = "Successfully Updated your User Info";

                        Response.Redirect("AnimeWMP.aspx");
                    }
                }
            }


        }
    }
}