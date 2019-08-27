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
    public partial class AddRest : System.Web.UI.Page
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
        OdbcConnection coon = new OdbcConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        protected void btnaddrest_Click(object sender, EventArgs e)
        {
           if(RadioButtonList1.SelectedIndex <0 )
           {
               Response.Write("<script>alert('Thank you for rating us');</script>");
               Response.Redirect(Request.RawUrl);
               
           }

            int feenum = 0;
            coon.Open();
            int rescode = 0;
            string restCode;
            string query1 = "SELECT MAX(Res_Code) FROM tblrestaurant";
            OdbcCommand cmd1 = new OdbcCommand(query1, coon);
            OdbcDataReader adt = cmd1.ExecuteReader();
            while (adt.Read())
            {
                rescode = Convert.ToInt32(adt[0].ToString().Substring(1, 2)) + 1;

            }
            restCode = "R" + rescode;
            if (FileUpload3.HasFile && FileUpload4.HasFile)
            {
                FileUpload3.SaveAs(Server.MapPath("~/Restaurants/" + FileUpload3.FileName));
                FileUpload4.SaveAs(Server.MapPath("~/Restaurants/" + FileUpload3.FileName));
                lbllogo.Text = "File Uploaded";
                lblupl2.Text = "File Uploaded";
                lbllogo.Visible = true;
                lblupl2.Visible = true;
                lbllogo.ForeColor = System.Drawing.Color.Green;
                lblupl2.ForeColor = System.Drawing.Color.Green;
                string imagename = FileUpload3.FileName;
                string imagename2 = FileUpload4.FileName;
                string path = "~//Restaurants//" + imagename.ToString();
                string path2 = "~//Restaurants//" + imagename2.ToString();

                feenum = Convert.ToInt32(RadioButtonList1.SelectedItem.Value);

                string query = "INSERT INTO  tblpayment(Payment_Date,Fee_Num,Res_Code) VALUES('" + DateTime.Now.ToShortDateString() + "','" + feenum + "','"+restCode+"')";
                string query2 = "INSERT INTO  tblrestaurant(Res_Code,Res_Name,Res_TelNo,Res_Town,Res_Logo,Res_Loc,Res_Web,Res_Address) VALUES('" + restCode + "','" + txtname.Text + "','" + txttell.Text + "','" + DropDownList1.SelectedValue + "','" + path + "','" + path2 + "','" + txtwb.Text + "','" + txtwb.Text + "')";
                OdbcCommand cmd2 = new OdbcCommand(query2, coon);
                OdbcCommand cmd = new OdbcCommand(query, coon);
                cmd2.ExecuteNonQuery();
                cmd.ExecuteNonQuery();
                lbladdedRes.Text="Restuarent Added within 3 working days";
                lbladdedRes.Visible = true;
            }
            else
            {
                lbllogo.Text = "File Not Uploaded";
                lblupl2.Text = "File Not Uploaded";
                lbllogo.Visible = true;
                lblupl2.Visible = true;
                lbllogo.ForeColor = System.Drawing.Color.Red;
                lblupl2.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}