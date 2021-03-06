﻿using System;
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
            if (ViewState["trainerId"].ToString() != null || ViewState["trainerId"].ToString() != "") {
                LblSelectTrainerResult.Text = "Successful! <br />We will redirect you to the trainer information page";
                Response.AddHeader("REFRESH", "1;URL=TrainerInfo.aspx?membership=true&Id=" + ViewState["trainerId"].ToString());
            }
        }

        protected void LBTrainersResult_SelectedIndexChanged(object sender, EventArgs e)
        {
            String tName = LBTrainersResult.SelectedItem.ToString();
            ViewState["trainerName"] = tName;
            int tId = Convert.ToInt16(LBTrainersResult.SelectedValue.ToString());
            ViewState["trainerId"] = LBTrainersResult.SelectedValue.ToString();
            String connectionString = WebConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            String sqlSelect = "SELECT tFees FROM Staff WHERE sId=" + tId;
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
            LblSelectedTrainerFees.Text = "RM " + ViewState["trainerFees"].ToString();
        }
    }
}