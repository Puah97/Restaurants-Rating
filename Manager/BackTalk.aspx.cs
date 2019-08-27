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

public partial class Manager_BackTalk : System.Web.UI.Page
{
    OdbcConnection coon = new OdbcConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnfilter_Click(object sender, EventArgs e)
    {
       string query= "SELECT Review_Content FROM tblreview WHERE rat_code='"+DropDownList1.SelectedValue+"' AND serviceID='"+DropDownList3.SelectedValue+"' AND Substr(Review_Date,1,1) LIKE '%"+DropDownList2.SelectedValue+"%'";
        coon.Open();
        OdbcDataAdapter adapt = new OdbcDataAdapter(query,coon);
        DataSet ds = new DataSet();
       adapt.Fill(ds);

        coon.Close();
        ListView1.DataSource = ds;
        ListView1.DataBind();
    }

    protected void btnrespond_Click(object sender, EventArgs e)
    {

        string query = "UPDATE tblreview SET Review_Response='" + TextBox2.Text + "',Response_Date='" + DateTime.Now.ToShortDateString() + "' WHERE Substr(Review_Date,1,1) LIKE '%" + DropDownList2.SelectedValue + "%' AND rat_code='" + DropDownList1.SelectedValue + "' AND serviceID='" + DropDownList3.SelectedValue + "'";
        coon.Open();
        OdbcCommand cmd = new OdbcCommand(query, coon);
        cmd.ExecuteNonQuery();
        lblresponce.Text = "Responce was successful";
        lblresponce.Visible = true;

        //if (TextBox2.Text == "")
        //{
  
        //else
        //{
        //    string query2 = "UPDATE tblreview SET Review_Response='" + TextBox2.Text + "',Response_Date='" + DateTime.Now.ToShortDateString() + "' WHERE Review_Response='' AND rat_code='" + DropDownList1.SelectedValue + "'" ;
        //    coon.Open();
        //    OdbcCommand cmd = new OdbcCommand(query2, coon);
        //    cmd.ExecuteNonQuery();
        //}
    }
    protected void dtsrcServiceT_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void dtsrcServiceT_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}