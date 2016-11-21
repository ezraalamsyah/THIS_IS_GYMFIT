using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GYMFIT
{
    public partial class _Default : Page
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


        }
    }
}