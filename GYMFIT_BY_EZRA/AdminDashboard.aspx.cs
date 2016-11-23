using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.Configuration;
using System.Web.UI.WebControls;
using System.Text;


namespace GYMFIT_BY_EZRA
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BtnVenueBookings_Click(object sender, EventArgs e) {
            MVAdminDashboard.ActiveViewIndex = 0;
        }
        protected void BtnManageUsers_Click(object sender, EventArgs e)
        {
            MVAdminDashboard.ActiveViewIndex = 1;
        }
        protected void BtnManageStaffs_Click(object sender, EventArgs e)
        {
            MVAdminDashboard.ActiveViewIndex = 2;
        }
    }
}