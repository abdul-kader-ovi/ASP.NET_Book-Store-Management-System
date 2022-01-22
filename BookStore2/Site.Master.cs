using BookStore2.DAL;
using BookStore2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookStore2
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReport_Click(object sender, EventArgs e)
        {
            List<Product1> products = ProductGateWay.GetProductList();
            Session["Data"] = products;
            Response.Redirect("ReportView.aspx");
        }
    }
}