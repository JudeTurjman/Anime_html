using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_2.HTMLPages
{
    public partial class BerserkWMP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UName"].ToString() == "Guest" && Session["FName"].ToString() == "Guest")
            {
                Response.Redirect("AnimeWMP.aspx");
            }
        }
    }
}