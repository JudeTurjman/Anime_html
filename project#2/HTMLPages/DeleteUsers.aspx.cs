﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_2.HTMLPages
{
    public partial class DeleteUsers : System.Web.UI.Page
    {
        public string st = "";
        public string MUNum = "";

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
                string deleteUserAction = "";

                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);
                int length = table.Rows.Count;
                if (length == 0)
                {
                    MUNum = "There is No Users :(";
                }
                else
                {
                    st += "<tr>";
                    st += "<th class = 'table0'>Delete</th>";
                    st += "<th class = 'table1'>User Name</th>";
                    st += "<th class = 'table2'>First Name</th>";
                    st += "<th class = 'table3'>Last Name</th>";
                    st += "<th class = 'table4'>Email</th>";
                    st += "<th class = 'table5'>Year Born</th>";
                    st += "<th class = 'table6'>City</th>";
                    st += "<th class = 'table7'>Gender</th>";
                    st += "<th class = 'table8'>Phone Numder</th>";
                    st += "<th class = 'table9'>Playing Sports</th>";
                    st += "<th class = 'table10'>Reading</th>";
                    st += "<th class = 'table11'>Drawing</th>";
                    st += "<th class = 'table12'>Rizzing</th>";
                    st += "<th class = 'table13'>Edging</th>";
                    st += "<th class = 'table14'>Passward</th>";
                    st += "</tr>";



                    for (int i = 0; i < length; i++)
                    {
                        deleteUserAction = table.Rows[i]["UName"].ToString();
                        st += "<tr>";
                        st += "<td class = 'table0'>";
                        st += "<a href = 'DeleteAction.aspx?UName=" + deleteUserAction + "' style= 'color: red' >[Delete]</a>";
                        st += "</td>";
                        st += "<td class = 'table1'>" + table.Rows[i]["UName"] + "</td>";
                        st += "<td class = 'table2'>" + table.Rows[i]["FName"] + "</td>";
                        st += "<td class = 'table3'>" + table.Rows[i]["LName"] + "</td>";
                        st += "<td class = 'table4'>" + table.Rows[i]["Email"] + "</td>";
                        st += "<td class = 'table5'>" + table.Rows[i]["YearBorn"] + "</td>";
                        st += "<td class = 'table6'>" + table.Rows[i]["City"] + "</td>";
                        st += "<td class = 'table7'>" + table.Rows[i]["Gender"] + "</td>";
                        st += "<td class = 'table8'>" + table.Rows[i]["Prefix"] + "-" + table.Rows[i]["Phone"] + "</td>";
                        st += "<td class = 'table9'>" + table.Rows[i]["Hob1"] + "</td>";
                        st += "<td class = 'table10'>" + table.Rows[i]["Hob2"] + "</td>";
                        st += "<td class = 'table11'>" + table.Rows[i]["Hob3"] + "</td>";
                        st += "<td class = 'table12'>" + table.Rows[i]["Hob4"] + "</td>";
                        st += "<td class = 'table13'>" + table.Rows[i]["Hob5"] + "</td>";
                        st += "<td class = 'table14'>" + table.Rows[i]["Pass"] + "</td>";
                        st += "</tr>";
                    }

                    MUNum = "There are " + length + " users.";
                }
            }
        }
    }
}