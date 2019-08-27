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

public partial class Default2 : System.Web.UI.Page
{
    OdbcConnection coon = new OdbcConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDone_Click(object sender, EventArgs e)
    {


        coon.Open();
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/profile/" + FileUpload1.FileName));

            lblupload.Text = "File Uploaded";

            lblupload.Visible = true;
            lblupload.ForeColor = System.Drawing.Color.Green;

            string imagename = FileUpload1.FileName;

            string path = "~//profile//" + imagename.ToString();
            if (IsPostBack)
            {
                Image2.ImageUrl = path;

            }
            
            string query2 = "UPDATE tblfoodcritic SET  Profile_Pic='" + path + "',Clasification='" + DropDownList2.SelectedValue + "',Adress='" + txtaddr.Text + "',gender='" + DropDownList3.SelectedValue + "',Sec_Ques='" + DropDownList1.SelectedValue + "',Sec_Answer='" + txtans.Text + "' WHERE Cr_emailAddr ='" + Session["userEmail"].ToString() + "'";
            OdbcCommand cmd = new OdbcCommand(query2, coon);
            cmd.ExecuteNonQuery();
            Session["userName"] = null;
            Response.Redirect("~/Account/Login.aspx");
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}