using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Finiteloop.Manager
{
    public partial class DeleteAdvert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_type"] == "user")
            {
                Response.Write("<script>alert('Thank you for rating us');</script>");
                if (File.Exists(Server.MapPath("~/Default.aspx")))
                Response.Redirect("~/Default.aspx");
            }
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlDataSource2.Insert();
            lbldelete.Text="delete succeeded";
            lbldelete.Visible = true;
            //lbldelete.ForeColor = System.Drawing.Color.Green;
            GridView1.AllowSorting = true;
            GridView1.AutoGenerateColumns = true;
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
}
}