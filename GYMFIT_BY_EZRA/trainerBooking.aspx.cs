﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GYMFIT
{
    public partial class trainerBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            String Trainer = DDLTrainerType.SelectedItem.Text;
            String Budget = TBBudget.Text;
            String Results = LBQueryResults.SelectedItem.Text;
        }

        protected void btnTrainerSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}