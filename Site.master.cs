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
    public partial class Site : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["search"]="";
            string sn = null;

            

            if(Session["Profile_p"]==null)
            {
                //Response.Write("<script>alert('Remember to set a Profile Picture');</script>");
            }
            else
            {
                pimage.ImageUrl = Session["Profile_p"].ToString();
                sn = Session["user_type"].ToString();

            }

            if (Session["user_type"] == null)
            {

                //if (File.Exists(Server.MapPath("~/Account/Login.aspx")))
                //    Response.Redirect("~/Account/Login.aspx");

                
            }
           
           

            else
            {

                if (sn == "admin")
                {

  
                    HyperLink8.Visible = true;
                    HyperLink9.Visible = true;
                    HyperLink11.Visible = true;



                }
                else if (sn == "user")
                {
                    HyperLink2.Visible = true;
                    HyperLink3.Visible = true;
                    HyperLink4.Visible = true;
                    //HyperLink12.Visible = true;
                    HyperLink11.Visible = true;

                }
                else if (sn == "man")
                {

                    HyperLink5.Visible = true;
                    HyperLink6.Visible = true;
                    HyperLink7.Visible = true;
                    HyperLink10.Visible = true;
                    HyperLink11.Visible = true;



                }
                else if (sn == "Guest")
                {
                    HyperLink2.Visible = false;
                    HyperLink3.Visible = false;
                    HyperLink4.Visible = false;
                    HyperLink8.Visible = false;
                    HyperLink9.Visible = false;
                    HyperLink5.Visible = false;
                    HyperLink6.Visible = false;
                    HyperLink7.Visible = false;
                    HyperLink10.Visible= false;
                    HyperLink11.Visible= false;



                }

                Button3.Text = Session["userName"].ToString();


                //lblUserName.Text = Session["userName"].ToString();
                //lblEmail.Text = Session["userEmail"].ToString();
                //lbltest.Text = Session["user_type"].ToString().ToUpper();
                //if (Session["user_type"]=="user")
                //{
                //    foreach(TreeNode node in TreeView1.Nodes)
                //    {
                //        if (node.Text == "manager")
                //        {

                //        }
                //    }
                //}

            }

        }

        //protected void btnLogout_Click(object sender, EventArgs e)
        //{
        //    Session["userName"] = null;
        //    Session["userEmail"] = null;

        //    Response.Redirect(Request.RawUrl);
        //}


        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["userName"] = null;
            Session["userEmail"] = null;
            Session["Profile_p"] = null;
            Session["user_type"] = null;
            Response.Redirect(Request.RawUrl);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["search"]= TextBox1.Text.ToString().ToUpper();
            Response.Redirect("~/Default.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer/UserProfile.aspx");
        }
        protected void Button3_Click1(object sender, EventArgs e)
        {

        }
}
}