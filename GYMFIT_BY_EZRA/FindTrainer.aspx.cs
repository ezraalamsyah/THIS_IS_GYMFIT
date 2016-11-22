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
    public partial class FindTrainer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                ViewState["trainerName"] = "Trainer Name";
                ViewState["trainerFees"] = "0";
                ViewState["trainerId"] = "0";

                LblSelectedTrainer.Text = ViewState["trainerName"].ToString();
                LblSelectedTrainerFees.Text = ViewState["trainerFees"].ToString();
            }
        }

        protected void BtnSelectTrainer_Click(object sender, EventArgs e)
        {
            String Trainer = DDLTrainerType.SelectedItem.Text;
            String Budget = TBBudget.Text;
            String Results = LBTrainersResult.SelectedItem.Text;
        }

        protected void LBTrainersResult_SelectedIndexChanged(object sender, EventArgs e)
        {
            String tName = LBTrainersResult.SelectedItem.ToString();
            ViewState["trainerName"] = tName;
            int tId = Convert.ToInt16(LBTrainersResult.SelectedValue.ToString());
            ViewState["trainerId"] = tId;
            String connectionString = WebConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            String sqlSelect = "SELECT tFees FROM Staff WHERE sId=" + tId + "";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(sqlSelect, con);
            try
            {
                String tFees = Convert.ToString(cmd.ExecuteScalar());
                ViewState["trainerFees"] = tFees;
            }
            catch (SqlException oError)
            {
                ViewState["trainerFees"] = "ERROR: " + oError;
            }
            con.Close();

            LblSelectedTrainer.Text = ViewState["trainerName"].ToString();
            LblSelectedTrainerFees.Text = ViewState["trainerFees"].ToString();
            BtnSelectTrainer.Attributes.Add("onclick", "window.open('TrainerPopup.aspx?Id=" + ViewState["trainerId"].ToString() +", '', 'height=400,width=400');");
        }
    }
}