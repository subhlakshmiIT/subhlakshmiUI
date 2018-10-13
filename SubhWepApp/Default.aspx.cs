using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    DBMangerClass dbm = new DBMangerClass();
    CultureInfo ci = CultureInfo.GetCultureInfo("en-IN");
    static Label lblMsg;
    static int Id;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            FillStaticData();
            FillLatestNewsData();
            FillTestimonialData();
            FillUserPicData();
        }
    }

    public void FillStaticData()
    {
        try
        {
            string st = "SELECT * FROM Statcs";
            dt = dbm.ExecuteSelectCommand(st, CommandType.Text);
            RptStatcs.DataSource = dt;
            RptStatcs.DataBind();
        }
        catch (Exception ex)
        {
            //lblMsg.Text = ex.ToString();
            //lblMsg.ForeColor = Color.Red;
            //lblMsg.BackColor = Color.Yellow;
        }
    }

    

         public void FillLatestNewsData()
    {
        try
        {
            string st = "SELECT * FROM LatestNews";
            dt = dbm.ExecuteSelectCommand(st, CommandType.Text);
            rptLatestNews.DataSource = dt;
            rptLatestNews.DataBind();
        }
        catch (Exception ex)
        {
            //lblMsg.Text = ex.ToString();
            //lblMsg.ForeColor = Color.Red;
            //lblMsg.BackColor = Color.Yellow;
        }
    }


    

         public void FillTestimonialData()
    {
        try
        {
            string st = "SELECT * FROM Testimonial";
            dt = dbm.ExecuteSelectCommand(st, CommandType.Text);
            rptTestimonial.DataSource = dt;
            rptTestimonial.DataBind();
        }
        catch (Exception ex)
        {
            //lblMsg.Text = ex.ToString();
            //lblMsg.ForeColor = Color.Red;
            //lblMsg.BackColor = Color.Yellow;
        }
    }

    public void FillUserPicData()
    {
        try
        {
            string st = "SELECT * FROM Client";
            dt = dbm.ExecuteSelectCommand(st, CommandType.Text);
             RptClient.DataSource = dt;
             RptClient.DataBind();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.ToString();
            lblMsg.ForeColor = Color.Red;
            lblMsg.BackColor = Color.Yellow;
        }
    }
}