using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GYMFIT_BY_EZRA
{
	public partial class Testing : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Trainer_SelectedIndexChanged(object sender, EventArgs e)
        {
            LblSelectedIndex.Text = DDL.SelectedIndex.ToString();
            LblSelectedValue.Text = DDL.SelectedValue.ToString();
            LblSelectedItem.Text = DDL.SelectedItem.ToString();
        }
    }
}