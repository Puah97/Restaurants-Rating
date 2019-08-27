using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Finiteloop.Manager
{
    public partial class UpdateAvertisement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HiddenField1.Value = Session["ResCode"].ToString();

            if (Session["user_type"] == "user")
            {
                Response.Write("<script>alert('Thank you for rating us');</script>");
                if (File.Exists(Server.MapPath("~/Default.aspx")))
                Response.Redirect("~/Default.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource2.Insert();

            Label5.Text = "Thank you!!! your Updates will apear soon";
            Label5.Visible = true;

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Calendar1.SelectedDate.ToShortDateString();
            if (Calendar1.SelectedDate < DateTime.Now)
            {
                Calendar1.WeekendDayStyle.BackColor = System.Drawing.Color.Red;
            }
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            Calendar2.SelectedDate.ToShortDateString();
        }
        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date < DateTime.Now.Date)
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.Red;
                e.Cell.Font.Strikeout = true;
            }
        }
        protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date < DateTime.Now.Date)
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.Red;
                e.Cell.Font.Strikeout = true;
            }
        }
        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
        protected void DropDownList3_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
}
}