using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.Odbc;
using System.IO;

namespace Finiteloop
{
    public partial class writeReview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_type"] == "admin")
            {
                if (File.Exists(Server.MapPath("~/Default.aspx")))
                Response.Redirect("~/Default.aspx");
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }
        OdbcConnection coon = new OdbcConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //VALUES('" + TextBox1.Text + "','" +Calendar1.SelectedDate + "','" + DropDownList1.SelectedItem.ToString() + "','" + CR + "','" + DropDownList2.SelectedItem.Value + "'";
                coon.Open();
                int CR = 7;


                string da = "INSERT INTO tblreview(Review_Content,Review_Date,Res_Code,Cr_No,rat_code,serviceID) VALUES( '" + TextBox1.Text + "','" + Calendar1.SelectedDate.ToShortDateString() + "','" + DropDownList1.SelectedValue + "','" + CR + "','" + RadioButtonList1.SelectedItem.Value + "','"+DropDownList2.SelectedValue+"')";
                OdbcCommand cmd = new OdbcCommand(da,coon);
                cmd.ExecuteNonQuery();
                lblRating.Text="Thank you for rating us";
                //lblRating.ForeColor = System.Drawing.Color.Green;
                lblRating.Visible = true;
                coon.Close();
            }
            catch (OdbcException od)
            {
                Response.Write(od.ToString());
                coon.Close();
            }
            TextBox1.Text = "";
        }
        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date > DateTime.Now.Date)
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.Red;
                e.Cell.Font.Strikeout = true;
            }
        }
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void dtsrcRest_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
}
}