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
    public partial class Advertisement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HiddenField1.Value = Session["ResCode"].ToString();
            if (Session["user_type"] == "user")
            {
                if (File.Exists(Server.MapPath("~/Default.aspx")))
                Response.Redirect("~/Default.aspx");
            }

        }
        OdbcConnection coon = new OdbcConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Button1.Enabled = false;
            }


            //try
            //{
            //    int RecieptNo = 0;

            //    coon.Open();
            //    Response.Write("<script>alert('connection opende');</script>");




            //    string query = "SELECT MAX(Payment_ReceiptNo)+1 FROM tblpayment";
            //    OdbcCommand cmd2 = new OdbcCommand(query, coon);
            //    cmd2.CommandType = CommandType.Text;

            //    OdbcDataReader dr = cmd2.ExecuteReader();

            //    while (dr.Read())
            //    {
            //        RecieptNo = Convert.ToInt32(dr[0].ToString());
            //    }




            //    string da1 = "INSERT INTO Payment_ReceiptNo(Payment_ReceiptNo) VALUES( '" + RecieptNo + "')";
            //    OdbcCommand cmd1 = new OdbcCommand(da1, coon);
            //    cmd1.ExecuteNonQuery();





                //string da = "INSERT INTO tbladvertisement(Res_Code,Payment_ReceiptNo,star_date,end_date,special_description) VALUES( '" + DropDownList1.SelectedValue.ToString() + "','" + RecieptNo + "','" + Calendar1.SelectedDate.ToString() + "','" + Calendar2.SelectedDate.ToString() + "','" + DropDownList2.SelectedItem.Value + "')";
                //OdbcCommand cmd = new OdbcCommand(da, coon);
                //cmd.ExecuteNonQuery();
                //Response.Write("<script>alert('Thank you for rating us');</script>");
                //coon.Close();
                SqlDataSource2.Insert();
            lblpost.Text="Thank you!!! Your advertisement will apear soon";
            lblpost.Visible = true;

            //}
            //catch (OdbcException od)
            //{
            //    Response.Write(od.ToString());
            //    coon.Close();
            //}
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Calendar1.SelectedDate.ToShortDateString();
            if(Calendar1.SelectedDate < DateTime.Now)
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
        protected void DtsrcRestuarent_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
        protected void dtsrcrest_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
} }
