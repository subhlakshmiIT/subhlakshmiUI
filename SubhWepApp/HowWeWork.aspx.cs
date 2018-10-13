using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HowWeWork : System.Web.UI.Page
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
            FillData();
        }
    }
    public void FillData()
    {
        try
        {
            string st = "SELECT * FROM HowWeWork";
            dt = dbm.ExecuteSelectCommand(st, CommandType.Text);
            RptProducts.DataSource = dt;
            RptProducts.DataBind();
        }
        catch (Exception ex)
        {
            //lblMsg.Text = ex.ToString();
            //lblMsg.ForeColor = Color.Red;
            //lblMsg.BackColor = Color.Yellow;
        }
    }
}