using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;

public partial class ViewReview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            setImage();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        setImage();
    }

    private void setImage()
    {
        Random rand = new Random();
        int i = rand.Next(1, 7);
        Image1.ImageUrl = "~/resimage/" + i.ToString() + ".jpg";
    }
}