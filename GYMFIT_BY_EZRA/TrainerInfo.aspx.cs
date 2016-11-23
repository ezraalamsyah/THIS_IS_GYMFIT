using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.Configuration;

namespace GYMFIT_BY_EZRA
{
    public partial class TrainerInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String connectionString = WebConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;

            String sqlSelect = "SELECT COUNT(*) FROM Staff WHERE sId=" + Request.QueryString["Id"].ToString() + "";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(sqlSelect, con);
            int trainerExist = (int)cmd.ExecuteScalar();
            if (trainerExist > 0)
            {
                sqlSelect = "SELECT sName, sEmail, sPhoneNo, tFees FROM Staff WHERE sId=" + Request.QueryString["Id"].ToString() + "";
                cmd = new SqlCommand(sqlSelect, con);
                try
                {
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.HasRows) {
                        while (reader.Read())
                        {
                            LiteralTrainerResult.Text = "<table>";
                            LiteralTrainerResult.Text += "<tr>";
                            LiteralTrainerResult.Text += "<td>";
                            LiteralTrainerResult.Text += "<p>Trainer's Name:</p>";
                            LiteralTrainerResult.Text += "</td>";
                            LiteralTrainerResult.Text += "<td>";
                            LiteralTrainerResult.Text += "<p>" + reader.GetString(0) + "</p>";
                            LiteralTrainerResult.Text += "</td>";
                            LiteralTrainerResult.Text += "</tr>";
                            LiteralTrainerResult.Text += "<tr>";
                            LiteralTrainerResult.Text += "<td>";
                            LiteralTrainerResult.Text += "<p>Trainer's Email:</p>";
                            LiteralTrainerResult.Text += "</td>";
                            LiteralTrainerResult.Text += "<td>";
                            LiteralTrainerResult.Text += "<p>" + reader.GetString(1) + "</p>";
                            LiteralTrainerResult.Text += "</td>";
                            LiteralTrainerResult.Text += "</tr>";
                            LiteralTrainerResult.Text += "<tr>";
                            LiteralTrainerResult.Text += "<td>";
                            LiteralTrainerResult.Text += "<p>Trainer's Phone Number:</p>";
                            LiteralTrainerResult.Text += "</td>";
                            LiteralTrainerResult.Text += "<td>";
                            LiteralTrainerResult.Text += "<p>" + reader.GetString(2) + "</p>";
                            LiteralTrainerResult.Text += "</td>";
                            LiteralTrainerResult.Text += "</tr>";
                            LiteralTrainerResult.Text += "<tr>";
                            LiteralTrainerResult.Text += "<td>";
                            LiteralTrainerResult.Text += "<p>Trainer's Fees:</p>";
                            LiteralTrainerResult.Text += "</td>";
                            LiteralTrainerResult.Text += "<td>";
                            LiteralTrainerResult.Text += "<p>" + reader.GetDouble(3) + "</p>";
                            LiteralTrainerResult.Text += "</td>";
                            LiteralTrainerResult.Text += "</tr>";
                            LiteralTrainerResult.Text += "</table>";
                        }
                    }
                    
                }
                catch (SqlException oError)
                {
                    LiteralTrainerResult.Text = oError.ToString();
                }
            }
            con.Close();
        }
    }
}