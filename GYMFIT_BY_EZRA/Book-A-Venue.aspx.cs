using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.Configuration;
using System.Web.UI.WebControls;
using System.Text;

namespace GYMFIT
{
    public partial class venueBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["GYMFITLoggedIn"] == null) {
                Request.Cookies["GYMFITLoggedIn"].Value = null;
            }
        }

        protected void BtnSubmitVenueBooking_Click(object sender, EventArgs e)
        {
            String venue = DDLVenue.SelectedValue;
            int pax = Int32.Parse(TBPax.Text);
            DateTime date = CalendarBookingDate.SelectedDate;
            DateTime startTime = Convert.ToDateTime(TBStartTime.Text);
            DateTime endTime = Convert.ToDateTime(TBEndTime.Text);
            String purpose = TBPurpose.Text;
            int cId = Int32.Parse(Request.Cookies["GYMFITLoggedInId"].Value);

            String connectionString = WebConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            String sqlInsert = "INSERT INTO VenueBooking (bookingDate, bookingStartTime, bookingEndTime, bookingCreatedDate, bookingStatus, purpose, vType, pax, cId) " +
                                   "VALUES ('" + date + "', '" + startTime.ToShortTimeString() + "', '" + endTime.ToShortTimeString() + "', '" +
                                   DateTime.Now + "', 'Pending', '" + purpose + "', '" + venue + "', " + pax + ", " + cId + "); ";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(sqlInsert, con);
            try
            {
                if (cmd.ExecuteNonQuery() == 1)
                {
                    LblBookingResult.Text = "Booking has been made successfully!<br />We will send you an email once it is confirmed!";
                }
                else
                {
                    LblBookingResult.Text = "Unable to make bookings";
                }
            }
            catch (SqlException oError)
            {
                LblBookingResult.Text = oError.ToString();
            }
            con.Close();

        }
    }
}