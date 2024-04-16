using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_2.HTMLPages
{
    public partial class AnimeWMP : System.Web.UI.Page
    {
        public string OnePieceRM = "";
        public string VinlandSagaRM = ""; 
        public string BerserkRM = "";
        public string AttackonTitanRM = "";
        public string NarutoRM = "";
        public string HunterxHunterRM = "";
        public string DeathNoteRM = "";
        public string BakiRM = "";
        public string BlueLockRM = "";
        public string BleachRM = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UName"].ToString() == "Guest")
            {
                OnePieceRM = "<a href = 'Login.aspx'>read more...</a>";
                VinlandSagaRM = "<a href = 'Login.aspx'>read more...</a>";
                BerserkRM = "<a href = 'Login.aspx'>read more...</a>";
                AttackonTitanRM = "<a href = 'Login.aspx'>read more...</a>";
                NarutoRM = "<a href = 'Login.aspx'>read more...</a>";
                HunterxHunterRM = "<a href = 'Login.aspx'>read more...</a>";
                DeathNoteRM = "<a href = 'Login.aspx'>read more...</a>";
                BakiRM = "<a href = 'Login.aspx'>read more...</a>";
                BlueLockRM = "<a href = 'Login.aspx'>read more...</a>";
                BleachRM = "<a href = 'Login.aspx'>read more...</a>";
            }
            else
            {
                OnePieceRM = "<a href= 'OnePieceWMP.aspx'>read more...</a>";
                VinlandSagaRM = "<a href= 'VinlandSagaWMP.aspx'>read more...</a>";
                BerserkRM = "<a href= 'BerserkWMP.aspx'>read more...</a>";
                AttackonTitanRM = "<a href= 'AttackOnTitanWMP.aspx'>read more...</a>";
                NarutoRM = "<a href= 'NarutoWMP.aspx'>read more...</a>";
                HunterxHunterRM = "<a href= 'HunterXHunter.aspx'>read more...</a>";
                DeathNoteRM = "<a href= 'DeathNoteWMP.aspx'>read more...</a>";
                BakiRM = "<a href= 'BakiWMP.aspx'>read more...</a>";
                BlueLockRM = "<a href= 'BlueLockWMP.aspx'>read more...</a>";
                BleachRM = "<a href= 'BleachWMP.aspx'>read more...</a>";

            }
        }
    }
}