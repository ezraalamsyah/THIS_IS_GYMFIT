using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.Configuration;
using System.Web.UI.WebControls;

namespace GYMFIT
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnRegister_Click(object sender, EventArgs e) {
            String email = TBEmail.Text;
            String password = TBPassword.Text;
            String name = TBFirstName.Text + TBLastName.Text;
            String gender = DDLGender.SelectedValue;
            String phoneNo = TBPhoneNo.Text;
            String address = TBAddress.Text;

            String connectionString = WebConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            String sqlSelect = "SELECT COUNT(*) FROM Customer WHERE cEmail='" + email + "'";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(sqlSelect, con);
            int customerExist = (int)cmd.ExecuteScalar();
            if (customerExist > 0) {
                LblRegisterStatus.Text = "This email is already registered!";
            }
            else
            {
                String sqlInsert = "INSERT INTO Customer (cName, cGender, cEmail, cPassword, cAddress, cPhoneNo) " +
                                   "VALUES ('" + name + "'," + " " + gender + "," + " '" + email + "'," +
                                   " '" + password + "'," + " '" + address + "'," + " '" + phoneNo + "');";
                cmd = new SqlCommand(sqlInsert, con);
                if (cmd.ExecuteNonQuery() == 1) {
                    LblRegisterStatus.Text = "Registered Successfully!<br />We will redirect you to the Login page.";
                    Response.AddHeader("REFRESH", "1;URL=Login.aspx?redirect=1");
                }
                else
                {
                    LblRegisterStatus.Text = "Unable to Register";
                }
            }
            con.Close();
        }
    }
}