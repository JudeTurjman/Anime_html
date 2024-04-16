using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_2.HTMLPages
{
    public partial class DeleteActionAll : System.Web.UI.Page
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

                if ((int)Session["Delete"] != 0)
                {
                    string sqlDelete = "";
                    string Value = "";
                    switch ((int)Session["Delete"])
                    {
                        case 1:
                            Value = Request.QueryString["FName"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE FName LIKE '%" + Value + "%'";
                            break;
                        case 2:
                            Value = Request.QueryString["LName"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE LName LIKE '%" + Value + "%'";
                            break;
                        case 3:
                            Value = Request.QueryString["Email"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE Email LIKE '%" + Value + "%'";
                            break;
                        case 4:
                            Value = Request.QueryString["YearBorn"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE YearBorn ='" + Value + "'";
                            break;
                        case 5:
                            Value = Request.QueryString["Gender"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE Gender ='" + Value + "'";
                            break;
                        case 6:
                            Value = Request.QueryString["Prefix"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE Prefix ='" + Value + "'";
                            break;
                        case 7:
                            Value = Request.QueryString["Phone"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE Phone LIKE '%" + Value + "%'";
                            break;
                        case 8:
                            Value = Request.QueryString["City"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE City ='" + Value + "'";
                            break;
                        case 9:
                            Value = Request.QueryString["Hob1"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE Hob1 ='" + Value + "'";
                            break;
                        case 10:
                            Value = Request.QueryString["Hob2"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE Hob2 ='" + Value + "'";
                            break;
                        case 11:
                            Value = Request.QueryString["Hob3"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE Hob3 ='" + Value + "'";
                            break;
                        case 12:
                            Value = Request.QueryString["Hob4"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE Hob4 ='" + Value + "'";
                            break;
                        case 13:
                            Value = Request.QueryString["Hob5"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE Hob5 ='" + Value + "'";
                            break;
                    }

                    Helper.DoQuery(fileName, sqlDelete);
                    Response.Redirect("UsersInfo.aspx");
                }
            }
        }
    }
}