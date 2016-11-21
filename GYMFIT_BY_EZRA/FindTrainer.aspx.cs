using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GYMFIT
{
    public partial class FindTrainer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSelectTrainer_Click(object sender, EventArgs e)
        {
            String Trainer = DDLTrainerType.SelectedItem.Text;
            String Budget = TBBudget.Text;
            String Results = LBTrainerResult.SelectedItem.Text;
        }
    }
}