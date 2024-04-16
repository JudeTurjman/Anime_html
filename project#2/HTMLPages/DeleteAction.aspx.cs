using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_2.HTMLPages
{
    public partial class DeleteAction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"].ToString() == "no")
            {
                Response.Redirect("AnimeWMP.aspx");
            }
            else
            {
                string fileName = "usersDB.mdf";
                string uName = Request.QueryString["UName"].ToString();

                string sqlDelete = "DELETE FROM usersTbl WHERE UName ='" + uName + "'";

                Helper.DoQuery(fileName, sqlDelete);
                Response.Redirect("DeleteUsers.aspx");
            }
        }
    }
}