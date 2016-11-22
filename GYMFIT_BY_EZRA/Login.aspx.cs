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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void BtnLogin_Click(Object sender, EventArgs e)
        {
            String email = TBEmail.Text;
            String password = TBPassword.Text;

            String connectionString = WebConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            String sqlSelect = "SELECT COUNT(*) FROM Customer WHERE cEmail='" + email + "'";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(sqlSelect, con);
            int customerExist = (int)cmd.ExecuteScalar();
            if (customerExist > 0)
            {
                sqlSelect = "SELECT cPassword FROM Customer WHERE cEmail='" + email + "'";
                cmd = new SqlCommand(sqlSelect, con);
                try
                {
                    String tempPass = Convert.ToString(cmd.ExecuteScalar());
                    if (password.Equals(tempPass)) {
                        sqlSelect = "SELECT cId FROM Customer WHERE cEmail='" + email + "'";
                        cmd = new SqlCommand(sqlSelect, con);
                        String cId = Convert.ToString(cmd.ExecuteScalar());
                        LblLoginStatus.Text = "Login Successful!<br /> We will redirect you to the Home page";
                        con.Close();
                        Response.Cookies["GYMFITLoggedIn"].Value = email;
                        Response.Cookies["GYMFITLoggedInId"].Value = cId;
                        Response.AddHeader("REFRESH", "3;URL=Home.aspx");
                    }
                    else
                    {
                        LblLoginStatus.Text = "Invalid Password. Please try again.";
                    }
                }
                catch (SqlException oError) {
                    LblLoginStatus.Text = oError.ToString();
                }        
            }
            else
            {
                LblLoginStatus.Text = "This email have not  registered!";
            }
            con.Close();
        }
    }
}