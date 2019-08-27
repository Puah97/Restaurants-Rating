using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Odbc;
using System.Collections;
using System.Data;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace Finiteloop.Account
{
    public partial class Registration : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                try
                {
                    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);

                    conn.Open();

                    string checkuser = "SELECT COUNT(*) FROM tblfoodcritic WHERE Cr_emailAddr = '" + Tbemail.Text + "'";
                    OdbcCommand com = new OdbcCommand(checkuser, conn);
                    int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                   

                    if (temp == 1)
                    {
                        Response.Write("<script>alert('Email already exist in database.');</script>");
                        Response.Redirect("Login.aspx");
                    }
                    conn.Close();
                }
                catch (OdbcException ec)
                {
                    Response.Write("<script>alert('"+ec.ToString()+"');</script>");
                }



               

            }

        }




        protected void Button1_Click(object sender, EventArgs e)
        {

            OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            try
            {

                string query = "INSERT INTO tblfoodcritic(Cr_Name,Cr_CellNo,Cr_emailAddr,Cr_Password,Cr_Role) VALUES('" + Tbfname.Text + "','" + Tbcell.Text + "','" + Tbemail.Text + "','" + Tbpass.Text + "','user')";
                OdbcCommand cmd = new OdbcCommand(query, conn);
                conn.Open();
                cmd.ExecuteNonQuery();


                Session["userName"] = Tbfname.Text;
                
                Session["userEmail"] = Tbemail.Text;
                


                Response.Redirect("~/profile/Default.aspx");
                


                conn.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }

        protected void NavigationMenu0_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}