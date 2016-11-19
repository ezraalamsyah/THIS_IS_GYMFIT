using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GYMFIT
{
    public partial class venueBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string venue = ddlVenue.SelectedValue;
            int pax = Int32.Parse(tbPax.Text);
            //DateTime date = Convert.ToDateTime(ddlDate.SelectedValue);
            //lmao what data type is date?
            //DateTime time = Convert.ToDateTime(ddlTime);
            string purpose = tbPurpose.Text;

            //Response.Redirect()?
        }
    }
}