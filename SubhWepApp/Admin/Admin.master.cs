using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            // Your code here
        }
        if (Session["userNM"] == null)
        {
           // lblUser.Text = Session["userNM"].ToString();
            Response.Redirect("Login.aspx");

        }
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("Login.aspx");
    }

    
}
