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
        OdbcConnection coon = new OdbcConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                coon.Open();

                string Query = "SELECT Cr_name,Profile_Pic,Cr_Role FROM tblfoodcritic WHERE Cr_emailAddr='" + Tbemail.Text + "' AND Cr_Password='" + Tbpass.Text + "'";
                OdbcDataAdapter oadt = new OdbcDataAdapter(Query, coon);
                DataSet ds = new DataSet();
                oadt.Fill(ds);



                if (ds.Tables[0].Rows.Count < 1)
                {
                    
                    string query2 = " SELECT Man_Name,Profile_Pic,Res_Code FROM tblmanager WHERE Man_emailAddr='" + Tbemail.Text + "' AND Man_Password='" + Tbpass.Text + "'";
                    OdbcDataAdapter adapt = new OdbcDataAdapter(query2, coon);
                    DataSet dts = new DataSet();
                    adapt.Fill(dts);

                    if (dts.Tables[0].Rows.Count < 1)
                    {
                        Response.Write("<script>alert('You are not registered as a user, please contact your Admin');</script>");
                    }

                    else
                    {
                        
                        Session["userName"] = dts.Tables[0].Rows[0]["Man_Name"].ToString();
                        Session["Profile_p"] = dts.Tables[0].Rows[0]["Profile_Pic"].ToString();
                        Session["userEmail"] = Tbemail.Text;
                        Session["user_type"] ="man";
                        Session["ResCode"] = dts.Tables[0].Rows[0]["Res_Code"].ToString();
                    

                        if (File.Exists(Server.MapPath("../Default.aspx")))
                            Response.Redirect("../Default.aspx");
                    }
                }
                else
                {

                    Session["userName"] = ds.Tables[0].Rows[0]["Cr_Name"].ToString();
                    Session["Profile_p"] = ds.Tables[0].Rows[0]["Profile_Pic"].ToString();
                    Session["userEmail"] = Tbemail.Text;
                    Session["user_type"] = ds.Tables[0].Rows[0]["Cr_Role"].ToString();

                    //Response.Write("<script>alert('"+Session["user_type"]+"');</script>");
                    if (File.Exists(Server.MapPath("../Default.aspx")))
                        Response.Redirect("../Default.aspx");

                }



            }
             catch(OdbcException ode)
            {
                Response.Write(ode.Message);
             }
            
                
                coon.Close();

            //    }
            //        else if (RadioButton2.Checked == true)
            //    {
            //        if (IsPostBack)
            //        {
            //            RadioButton1.Checked = false;
            //        }
            //        coon.Open();

            //        string Query = "SELECT Cr_name,Profile_Pic FROM tblfoodcritic WHERE Cr_emailAddr='" + Tbemail.Text + "' AND Cr_Password='" + Tbpass.Text + "' AND Cr_Role='admin'";
            //        OdbcDataAdapter adt = new OdbcDataAdapter(Query,coon);
            //        DataSet ds = new DataSet();
            //        adt.Fill(ds);
            //        if (ds.Tables[0].Rows.Count < 1)
            //        {
            //            Response.Write("<script>alert('You are not registered as an manager, please contact your Admin');</script>");
            //        }
            //        else
            //        {
            //            Session["userName"] = ds.Tables[0].Rows[0]["Cr_name"].ToString();
            //            Session["Profile_p"] = ds.Tables[0].Rows[0]["Profile_Pic"].ToString();
                        
            //            Session["userEmail"] = Tbemail.Text;
            //            Session["user_type"] = "admin";

            //            if (File.Exists(Server.MapPath("../Default.aspx")))
                            
            //            Response.Redirect("../Default.aspx");
            //        }
            //    }
            //    }
            //    catch(OdbcException odbce)
            //    { 
            //        Response.Write(odbce.ToString());
            //    }
            //coon.Close();
   
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}