using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_2.HTMLPages
{
    public partial class Chat : System.Web.UI.Page
    {
        public string st = "";
        public string Merror = "";
        public string chatNum = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UName"].ToString() == "Guest" && Session["FName"].ToString() == "Guest")
            {
                Response.Redirect("AnimeWMP.aspx");
            }
            else
            {

                string text = Request.Form["textchat"];
                string uname = Session["UName"].ToString();
                string time = DateTime.Now.ToString();
                int num;

                //ربط لقاعدة البيانات
                string fileName = "usersDB.mdf";
                string tableName = "chatTbl";

                string sqlSelect = "SELECT * FROM " + tableName;
                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);
                int length = table.Rows.Count;
                num = length;
                if (length == 0)
                {
                    Merror = "There is No Caht :(";
                }
                else
                {

                    for (int i = length - 1; i >= 0; i--)
                    {
                        st += "<tr style= 'border:0px'>";
                        st += "<td class = 'table1'>" + table.Rows[i]["UName"] + " :</td>";
                        if (table.Rows[i]["UName"].ToString() == "admin")
                            st += "<td class = 'table2' style = 'color:red'>" + table.Rows[i]["Text"] + "</td>";
                        else
                            st += "<td class = 'table2'>" + table.Rows[i]["Text"] + "</td>";
                        st += "<td class = 'table3'>" + table.Rows[i]["Time"] + "</td>";
                        st += "</tr>";
                    }

                    chatNum = "There are " + length + " message.";
                }

                if (Request.Form["submit"] != null && text != "")
                {
                    if (length > 0 && text != table.Rows[length - 1]["Text"].ToString() || length == 0)
                    {
                        //فحص اذا كان الوقت مستعمل بقاعدة البيانات
                        sqlSelect = "SELECT * FROM " + tableName + " WHERE Number ='" + num + "'";
                        string sqlInsert;

                        if (Helper.IsExist(fileName, sqlSelect))
                        {
                            Merror = "Please try again";
                        }
                        else
                        {
                            sqlInsert = "INSERT INTO chatTbl";
                            sqlInsert += " VALUES ('" + time + "','" + uname + "','" + text + "','" + num + "')";

                            Helper.DoQuery(fileName, sqlInsert);

                            sqlSelect = "SELECT * FROM " + tableName;
                            table = Helper.ExecuteDataTable(fileName, sqlSelect);
                            length = table.Rows.Count;
                            num = length;
                            if (length == 0)
                            {
                                Merror = "There is No Caht :(";
                            }
                            else
                            {
                                st = "";
                                Merror = "";

                                for (int i = length - 1; i >= 0; i--)
                                {
                                    st += "<tr style= 'border:0px'>";
                                    st += "<td class = 'table1'>" + table.Rows[i]["UName"] + " :</td>";
                                    if (table.Rows[i]["UName"].ToString() == "admin")
                                        st += "<td class = 'table2' style = 'color:red'>" + table.Rows[i]["Text"] + "</td>";
                                    else
                                        st += "<td class = 'table2'>" + table.Rows[i]["Text"] + "</td>";
                                    st += "<td class = 'table3'>" + table.Rows[i]["Time"] + "</td>";
                                    st += "</tr>";
                                }

                                chatNum = "There are " + length + " message.";
                            }
                        }
                    }
                }
            }




        }
    }
}