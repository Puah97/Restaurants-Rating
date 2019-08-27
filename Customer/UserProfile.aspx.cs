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

public partial class Customer_UserProfile : System.Web.UI.Page
{
      OdbcConnection coon = new OdbcConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
       

        DisplayUserDetauls();

       
       
    }



    protected void btnupdate_Click(object sender, EventArgs e)
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

            string query2 = "UPDATE tblfoodcritic SET  Profile_Pic='" + path + "',Cr_Name='" + txtname.Text + "',Cr_CellNo='" + txtcell.Text + "',gender='" + txtgender.Text + "',WHERE Cr_emailAddr ='" + Session["userEmail"].ToString() + "'";
            OdbcCommand cmd = new OdbcCommand(query2,coon);
            cmd.ExecuteNonQuery();
            DisplayUserDetauls();
            
            lblProfile.Text = "Profile has successfully updated";
            lblProfile.Visible = true;
            
        }






        coon.Close();

        DisplayUserDetauls();

    }





    public void DisplayUserDetauls()
    {
        coon.Close();
        coon.Open();

         //========================================================= connection opened


        if (Session["userEmail"] == null)
        {

            Response.Write("<script>alert('Please Login to see you full Profile');</script>");
            Image2.ImageUrl = "~/profile/emptypp.jpg";
            Image2.Height = 200;
            Image2.Width=200;
        }
            //========================================================================== user checked




        else
        {
            string cremail = Session["userEmail"].ToString();
            Response.Write(cremail);
            string imageurl = "", name = "", cell = "", email = "", gender = "",ques="",answ="";

            string query1 = "SELECT Profile_Pic,Cr_Name,Cr_CellNo,Cr_emailAddr,gender,Sec_Ques,Sec_Answer FROM tblfoodcritic WHERE Cr_emailAddr ='" + cremail + "'";
            OdbcDataAdapter oadt = new OdbcDataAdapter(query1, coon);
            DataSet ds = new DataSet();
            oadt.Fill(ds);

            if (ds.Tables[0].Rows.Count < 1)
            {
                Response.Write("<script>alert('Please Login to see you full Profile');</script>");
            }
            else
            {








                name = ds.Tables[0].Rows[0]["Cr_name"].ToString();
                cell = ds.Tables[0].Rows[0]["Cr_CellNo"].ToString();
                email = ds.Tables[0].Rows[0]["Cr_emailAddr"].ToString();
                gender = ds.Tables[0].Rows[0]["gender"].ToString();
                imageurl = ds.Tables[0].Rows[0]["Profile_Pic"].ToString();
                ques = ds.Tables[0].Rows[0]["Sec_Ques"].ToString();
                answ = ds.Tables[0].Rows[0]["Sec_Answer"].ToString();


                    if (imageurl.Length > 0)
                    {
                        Image2.ImageUrl = imageurl;
                    }
                    else
                    {
                        Image2.ImageUrl = "~/profile/emptypp.jpg";
                    }
                
                


            }

            //====================================================================================================== working

           
           
          



        }
        coon.Close();
    }

    //============================================================================================================= working
    protected void btnDone_Click(object sender, EventArgs e)
    {
        if (File.Exists(Server.MapPath("~/Default.aspx")))

            Response.Redirect("~/Default.aspx");
    }
}