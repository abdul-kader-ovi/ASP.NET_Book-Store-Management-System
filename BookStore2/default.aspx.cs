using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookStore2
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                lblLoggedInUser.Text = Session["User"].ToString();
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            FormsAuthentication.SignOut();            
            Response.Redirect("Login");
        }

      
    }
}