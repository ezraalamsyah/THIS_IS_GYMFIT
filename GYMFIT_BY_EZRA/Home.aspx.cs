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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["membership"] == "true") {
                PanelServices.Visible = true;
                PanelMembershipPlans.Visible = false;
            }
            else
            {
                PanelServices.Visible = false;
                PanelMembershipPlans.Visible = true;
            }
        }
        protected void BtnDailyPlanView_Click(object sender, EventArgs e)
        {
            MVMembershipPlan.ActiveViewIndex = 0;
        }
        protected void BtnMonthlyPlanView_Click(object sender, EventArgs e)
        {
            MVMembershipPlan.ActiveViewIndex = 1;
        }
        protected void BtnAnnualPlanView_Click(object sender, EventArgs e)
        {
            MVMembershipPlan.ActiveViewIndex = 2;
        }

        protected void BtnGetMembership_Click(object sender, EventArgs e) {
            PanelServices.Visible = false;
            PanelMembershipPlans.Visible = true;
        }
        protected void BtnDailyPlan_Click(object sender, EventArgs e)
        {
            UpdateMembership("Daily");
        }
        protected void BtnMonthlyPlan_Click(object sender, EventArgs e)
        {
            UpdateMembership("Monthly");
        }
        protected void BtnAnnualPlan_Click(object sender, EventArgs e)
        {
            UpdateMembership("Yearly");
        }

        private void UpdateMembership(String plan) {
            String email = Request.Cookies["GYMFITLoggedIn"].Value;
            String connectionString = WebConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            String sqlSelect = "SELECT COUNT(*) FROM Customer WHERE cEmail='" + email + "'";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(sqlSelect, con);
            int customerExist = (int)cmd.ExecuteScalar();
            if (customerExist > 0)
            {
                String sqlUpdate = "UPDATE Customer SET memberType='" + plan + "' WHERE cEmail='" + email + "'";
                cmd = new SqlCommand(sqlUpdate, con);
                try
                {
                    if (cmd.ExecuteNonQuery() == 1)
                    {
                        LblGetMembershipResult.Text = "You are now a " + plan + " GYM FIT member! <br /> We will redirect you in a second.";
                        Response.AddHeader("REFRESH", "3;URL=Home.aspx?membership=true");
                        con.Close();
                    }
                    else
                    {
                        LblGetMembershipResult.Text = "Unable to be a member.";
                        con.Close();
                    }
                }
                catch (SqlException oError)
                {
                    LblGetMembershipResult.Text = oError.ToString();
                }
            }
            else
            {
                LblGetMembershipResult.Text = "User does not exist!";
            }
            con.Close();
        }
    }
}