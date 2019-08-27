using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manager_Reports_CrtiticForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_type"] == "user")
        {
            Response.Write("<script>alert('Thank you for rating us');</script>");
            Response.Redirect("~/Default.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ReportViewer1.LocalReport.Refresh();
    }
}