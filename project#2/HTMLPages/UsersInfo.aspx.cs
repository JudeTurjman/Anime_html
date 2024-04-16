using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_2.HTMLPages
{
    public partial class UsersInfo : System.Web.UI.Page
    {
        public string stUT = "";
        public string MusersNum = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                Response.Redirect("AnimeWMP.aspx");
            }
            else
            {
                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";

                string sqlSelect = "SELECT * FROM " + tableName;

                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);
                int length = table.Rows.Count;
                if (length == 0)
                {
                    MusersNum = "There is No Users :(";
                }
                else
                {
                    stUT += "<tr>";
                    stUT += "<th class = 'table1'>User Name</th>";
                    stUT += "<th class = 'table2'>First Name</th>";
                    stUT += "<th class = 'table3'>Last Name</th>";
                    stUT += "<th class = 'table4'>Email</th>";
                    stUT += "<th class = 'table5'>Year Born</th>";
                    stUT += "<th class = 'table6'>City</th>";
                    stUT += "<th class = 'table7'>Gender</th>";
                    stUT += "<th class = 'table8'>Phone Numder</th>";
                    stUT += "<th class = 'table9'>Playing Sports</th>";
                    stUT += "<th class = 'table10'>Reading</th>";
                    stUT += "<th class = 'table11'>Drawing</th>";
                    stUT += "<th class = 'table12'>Rizzing</th>";
                    stUT += "<th class = 'table13'>Edging</th>";
                    stUT += "<th class = 'table14'>Passward</th>";
                    stUT += "</tr>";



                    for (int i = 0; i < length; i++)
                    {
                        stUT += "<tr>";
                        stUT += "<td class = 'table1'>" + table.Rows[i]["UName"] + "</td>";
                        stUT += "<td class = 'table2'>" + table.Rows[i]["FName"] + "</td>";
                        stUT += "<td class = 'table3'>" + table.Rows[i]["LName"] + "</td>";
                        stUT += "<td class = 'table4'>" + table.Rows[i]["Email"] + "</td>";
                        stUT += "<td class = 'table5'>" + table.Rows[i]["YearBorn"] + "</td>";
                        stUT += "<td class = 'table6'>" + table.Rows[i]["City"] + "</td>";
                        stUT += "<td class = 'table7'>" + table.Rows[i]["Gender"] + "</td>";
                        stUT += "<td class = 'table8'>" + table.Rows[i]["Prefix"] + "-" + table.Rows[i]["Phone"] + "</td>";
                        stUT += "<td class = 'table9'>" + table.Rows[i]["Hob1"] + "</td>";
                        stUT += "<td class = 'table10'>" + table.Rows[i]["Hob2"] + "</td>";
                        stUT += "<td class = 'table11'>" + table.Rows[i]["Hob3"] + "</td>";
                        stUT += "<td class = 'table12'>" + table.Rows[i]["Hob4"] + "</td>";
                        stUT += "<td class = 'table13'>" + table.Rows[i]["Hob5"] + "</td>";
                        stUT += "<td class = 'table14'>" + table.Rows[i]["Pass"] + "</td>";
                        stUT += "</tr>";
                    }

                    MusersNum = "There are " + length + " users.";
                }
            }

        }
    }
}