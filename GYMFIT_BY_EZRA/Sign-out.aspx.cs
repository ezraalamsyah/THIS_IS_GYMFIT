using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GYMFIT_BY_EZRA
{
    public partial class Sign_out : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cookies["GYMFITLoggedIn"].Value = "";
            Response.Cookies["GYMFITLoggedInId"].Value = "";
            Response.AddHeader("REFRESH", "3;URL=Home.aspx");
        }
    }
}