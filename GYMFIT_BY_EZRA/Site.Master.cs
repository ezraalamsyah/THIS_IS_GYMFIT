using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.Configuration;


namespace GYMFIT
{
    public partial class SiteMaster : MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            String currentUrl = Request.Url.AbsoluteUri;

            if (Request.Cookies["GYMFITLoggedIn"] == null || Request.Cookies["GYMFITLoggedInId"] == null)
            {
                Response.Cookies["GYMFITLoggedIn"].Value = null;
                Response.Cookies["GYMFITLoggedInId"].Value = null;
                Response.Cookies["GYMFITLoggedIn"].Expires = System.DateTime.Now.AddDays(1);
                Response.Cookies["GYMFITLoggedInId"].Expires = System.DateTime.Now.AddDays(1);
            }
            else
            {
                if (Request.Cookies["GYMFITLoggedIn"].Value == "" && Request.QueryString["redirect"] == null)
                {
                    Response.AddHeader("REFRESH", "0.5;URL=Register.aspx?redirect=1");
                }

                if (Request.Cookies["GYMFITLoggedIn"].Value != "" && checkMembership(Request.Cookies["GYMFITLoggedIn"].Value))
                {
                    if (currentUrl.ToLower().Contains("membership") == false)
                    {
                        Response.AddHeader("REFRESH", "0.5;URL=Home.aspx?membership=true");
                    }
                }
                if (Request.Cookies["GYMFITLoggedIn"].Value != "")
                {
                    if (Request.QueryString["membership"] == "true" || checkMembership(Request.Cookies["GYMFITLoggedIn"].Value))
                    {
                        LiteralNavigation.Text = "<ul>";
                        if (currentUrl.ToLower().Contains("home.aspx"))
                            LiteralNavigation.Text += "<li><a class='menu-item active' href='Home.aspx?membership=true'>Home</a></li>";
                        else
                            LiteralNavigation.Text += "<li><a class='menu-item' href='Home.aspx?membership=true'>Home</a></li>";
                        if (currentUrl.ToLower().Contains("book-a-venue.aspx"))
                            LiteralNavigation.Text += "<li><a class='menu-item active' href='Book-A-Venue.aspx?membership=true'>Venue</a></li>";
                        else
                            LiteralNavigation.Text += "<li><a class='menu-item' href='Book-A-Venue.aspx?membership=true'>Venue</a></li>";
                        if (currentUrl.ToLower().Contains("findtrainer.aspx"))
                            LiteralNavigation.Text += "<li><a class='menu-item active' href='FindTrainer.aspx?membership=true'>Trainer</a></li>";
                        else
                            LiteralNavigation.Text += "<li><a class='menu-item' href='FindTrainer.aspx?membership=true'>Trainer</a></li>";
                        if (currentUrl.ToLower().Contains("profile.aspx"))
                            LiteralNavigation.Text += "<li><a class='menu-item active' href='Profile.aspx?membership=true'>Profile</a></li>";
                        else
                            LiteralNavigation.Text += "<li><a class='menu-item' href='FindTrainer.aspx?membership=true'>Profile</a></li>";
                        if (currentUrl.ToLower().Contains("sign-out.aspx"))
                            LiteralNavigation.Text += "<li><a class='menu-item active' href='Sign-out.aspx'>Sign out</a></li>";
                        else
                            LiteralNavigation.Text += "<li><a class='menu-item' href='Sign-out.aspx?membership=true'>Sign out</a></li>";
                        LiteralNavigation.Text += "</ul>";
                    }
                    else
                    {
                        LiteralNavigation.Text = "<ul>";
                        if (currentUrl.ToLower().Contains("home.aspx"))
                            LiteralNavigation.Text += "<li><a class='menu-item active' href='Home.aspx?membership=true'>Home</a></li>";
                        else
                            LiteralNavigation.Text += "<li><a class='menu-item' href='Home.aspx?membership=true'>Home</a></li>";
                        if (currentUrl.ToLower().Contains("profile.aspx"))
                            LiteralNavigation.Text += "<li><a class='menu-item active' href='Profile.aspx?membership=true'>Profile</a></li>";
                        else
                            LiteralNavigation.Text += "<li><a class='menu-item' href='FindTrainer.aspx?membership=true'>Profile</a></li>";
                        if (currentUrl.ToLower().Contains("sign-out.aspx"))
                            LiteralNavigation.Text += "<li><a class='menu-item active' href='Sign-out.aspx'>Sign out</a></li>";
                        else
                            LiteralNavigation.Text += "<li><a class='menu-item' href='Sign-out.aspx?membership=true'>Sign out</a></li>";
                        LiteralNavigation.Text += "</ul>";
                    }

                }
                else
                {
                    LiteralNavigation.Text = "<ul>";
                    if (currentUrl.ToLower().Contains("register.aspx"))
                        LiteralNavigation.Text += "<li><a class='menu-item active' href='Register.aspx?redirect=1'>Register</a></li>";
                    else
                        LiteralNavigation.Text += "<li><a class='menu-item' href='Register.aspx?redirect=1'>Register</a></li>";
                    if (currentUrl.ToLower().Contains("login.aspx"))
                        LiteralNavigation.Text += "<li><a class='menu-item active' href='Login.aspx?redirect=1'>Login</a></li>";
                    else
                        LiteralNavigation.Text += "<li><a class='menu-item' href='Login.aspx?redirect=1'>Login</a></li>";
                    LiteralNavigation.Text += "</ul>";
                }

            }
        }

        private bool checkMembership(String email) {

            String connectionString = WebConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;

            String sqlSelect = "SELECT COUNT(*) FROM Customer WHERE cEmail='" + email + "'";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(sqlSelect, con);
            int customerExist = (int)cmd.ExecuteScalar();
            if (customerExist > 0)
            {
                sqlSelect = "SELECT memberType FROM Customer WHERE cEmail='" + email + "'";
                cmd = new SqlCommand(sqlSelect, con);
                try
                {
                    String memberType = Convert.ToString(cmd.ExecuteScalar());
                    if (memberType == null) {
                        con.Close();
                        return false;
                    }
                    else
                    {
                        con.Close();
                        return true;
                    }
                }
                catch (SqlException oError)
                {
                }
            }
            con.Close();
            return false;
        }

    }

}