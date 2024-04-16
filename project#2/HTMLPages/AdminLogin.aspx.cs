using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_2.HTMLPages
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        public string sqllogin = "";
        public string msg = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {

                string adminUN = Request.Form["adminuName"];
                string adminP = Request.Form["adminPass"];

                string fileName = "usersDB.mdf";
                string tableName = "AdminTbl";

                sqllogin = $"SELECT * from {tableName} where AdminUName = '{adminUN}' and AdminPass = '{adminP}'";

                DataTable table = Helper.ExecuteDataTable(fileName, sqllogin);
                int length = table.Rows.Count;
                if (length == 0)
                    msg = "There is an error in the Admin username or Admin password";
                else
                {
                    Session["admin"] = "admin";
                    Session["UName"] = "admin";
                    Session["FName"] = "admin";
                    Response.Redirect("AnimeWMP.aspx");

                }


            }
        }
    }
}