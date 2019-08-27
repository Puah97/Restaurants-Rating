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

public partial class Default : System.Web.UI.Page
{
    OdbcConnection coon = new OdbcConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string rname="";
        if (Session["search"] == null)
        {
            Session["search"] = "";
        }
        else
        {
            rname = Session["search"].ToString();
        }
        string query = "SELECT Res_Logo FROM tblrestaurant WHERE Res_Name like '%" + rname + "%'";
        OdbcDataAdapter adapt = new OdbcDataAdapter(query, coon);
        DataSet ds = new DataSet();
        adapt.Fill(ds);

        coon.Close();
        ListView1.DataSource = ds;
        ListView1.DataBind();
    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {
      
    }
    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}