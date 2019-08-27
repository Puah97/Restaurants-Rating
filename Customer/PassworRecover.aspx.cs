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

namespace Finiteloop.Account
{
    public partial class Login : System.Web.UI.Page
    {
        OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
       
           lblsecques.Visible = false;
            RECOVER.Visible = false;
            TextBox2.Visible = false;
            btncontinue.Visible = true;
                 lblpwd.Visible = false;
                 btndone.Visible = false;
    }
    protected void RECOVER_Click(object sender, EventArgs e)
    {
        string pwn = "";


        string finduser = "SELECT Cr_Password,Sec_Answer,Cr_Role FROM tblfoodcritic WHERE Cr_emailAddr = '" + TextBox1.Text + "'";
            OdbcDataAdapter adt = new OdbcDataAdapter(finduser, conn);
            DataSet dst = new DataSet();
            adt.Fill(dst);
            //if (dst.Tables[0].Rows[0]["Cr_Role"].ToString() == "user")
            //{
                if (TextBox2.Text == dst.Tables[0].Rows[0]["Sec_Answer"].ToString())
                {
                    lblpwd.Text = "Your Password :" + dst.Tables[0].Rows[0]["Cr_Password"].ToString();
                    lblpwd.Visible = true;
                    btndone.Visible = true;
                }
                else
                {
                    Response.Write("<script>alert('Wrong Answer');</script>");
                }
           // }
           


        
         conn.Close();
        
        }
    protected void btbContinue_Click(object sender, EventArgs e)
    {
        conn.Open();
        string finduser = "SELECT Sec_Ques FROM tblfoodcritic WHERE Cr_emailAddr = '"+TextBox1.Text+"'";

        OdbcDataAdapter ad = new OdbcDataAdapter(finduser, conn);
        DataSet ds = new DataSet();
        ad.Fill(ds);


        if (ds.Tables[0].Rows.Count < 1)
        {
            Response.Write("<script>alert('you are not registerd');</script>");
        }
        else
        {


            lblsecques.Text = ds.Tables[0].Rows[0]["Sec_Ques"].ToString();
            lblsecques.Visible = true;
            RECOVER.Visible = true;
            TextBox2.Visible = true;
            btncontinue.Visible = false;
        }
    }
    protected void btndone_Click(object sender, EventArgs e)
    {
        if (File.Exists(Server.MapPath("~/Default.aspx")))

            Response.Redirect("~/Default.aspx");
    }
}
}