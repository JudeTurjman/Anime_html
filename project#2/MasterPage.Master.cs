using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_2
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        public string loginMsg = "";
        public string openPages = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            loginMsg = "<h4> Hello, ";

            if (Session["admin"].ToString() == "no")
            {
                loginMsg += Session["FName"].ToString();
                loginMsg += "</h4>";

                if (Session["UName"].ToString() == "Guest")
                {
                    loginMsg += "<h4><a href = 'ChForm.aspx'> Connect new account</a>";
                    loginMsg += "<a href = 'Login.aspx'> Login with account</a></h4>";
                    openPages = "<li><a href= 'AdminLogin.aspx'>Admin Login</a></li>";
                }
                else
                {
                    loginMsg += "<h4><a href= 'EditUserInfo.aspx'>Edit Info</a> <br />";
                    loginMsg += "<a href = 'Logout.aspx'> Logout</a></h4>";
                    openPages = "<li><a href= 'WritersWMP.aspx'>Writers</a></li>";
                    openPages += "<li><a href= 'Chat.aspx'>Chat</a></li>";
                    openPages += "<li><a href= 'AdminLogin.aspx'>Admin Login</a></li>";
                    

                }

            }
            else
            {
                loginMsg += " Admin </h4>";
                loginMsg += "<h4><a href= 'Queries.aspx'> Admin Control </a>";
                loginMsg += "<a href= 'AdminLogout.aspx'> Logout </a></h4>";
                openPages = "<li><a href= 'WritersWMP.aspx'>Writers</a></li>";
                openPages += "<li><a href= 'Chat.aspx'>Chat</a></li>";

            }

        }
    }
}