using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class guest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Session["userName"] = "Guest";
        Session["userEmail"] = "guest@finiteloop.com";
        Session["Profile_p"] = "~/profile/emptypp.jpg";
        Session["user_type"] = "Guest";
        Response.Redirect("~/Default.aspx");
    }
}