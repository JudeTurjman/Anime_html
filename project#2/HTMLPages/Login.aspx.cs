using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_2.HTMLPages
{
    public partial class Login : System.Web.UI.Page
    {
        public string sqllogin = "";
        public string msg = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {

                string uName = Request.Form["username"];
                string pw = Request.Form["password"];

                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";

                sqllogin = $"SELECT * from {tableName} where UName = '{uName}' and Pass = '{pw}'";

                DataTable table = Helper.ExecuteDataTable(fileName, sqllogin);
                int length = table.Rows.Count;
                if (length == 0)
                    msg = "Username has yet to be Registered!";
                else
                {

                    Application.Lock();

                    // Increase the Login Counter by one!
                    Application["counter"] = (int)Application["counter"] + 1;

                    Application.UnLock();

                    // Bind the current logged in user info.
                    Session["UName"] = table.Rows[0]["UName"];
                    Session["FName"] = table.Rows[0]["FName"];

                    Response.Redirect("AnimeWMP.aspx");

                }


            }


        }

    }
}
