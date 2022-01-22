using BookStore2.DAL;
using BookStore2.Models;
using CrystalDecisions.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookStore2
{
    public partial class ReportView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Server.MapPath("/");

            List<ViewObj> Purchase = ReportGateWay.GetProductReport(path);

            Session["Data"] = Purchase;
            if (Session["Data"] != null)
            {

                var list = Session["Data"] as List<ViewObj>;
                BookReport reportObj = new BookReport();
                reportObj.SetDataSource(list);
                CrystalReportViewer1.ReportSource = reportObj;
                reportObj.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "User Info");

            }
        }
    }
}