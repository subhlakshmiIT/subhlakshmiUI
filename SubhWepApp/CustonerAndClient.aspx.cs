using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustonerAndClient : System.Web.UI.Page
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
            FillDataClient();
        }
    }

    public void FillData()
    {
        try
        {
            string st = "SELECT * FROM Customer";
            dt = dbm.ExecuteSelectCommand(st, CommandType.Text);
            RptCustomers.DataSource = dt;
            RptCustomers.DataBind();
        }
        catch (Exception ex)
        {
            //lblMsg.Text = ex.ToString();
            //lblMsg.ForeColor = Color.Red;
            //lblMsg.BackColor = Color.Yellow;
        }
    }

    public void FillDataClient()
    {
        try
        {
            string st = "SELECT * FROM [Client]";
            dt = dbm.ExecuteSelectCommand(st, CommandType.Text);
            RptClient.DataSource = dt;
            RptClient.DataBind();
        }
        catch (Exception ex)
        {
            //lblMsg.Text = ex.ToString();
            //lblMsg.ForeColor = Color.Red;
            //lblMsg.BackColor = Color.Yellow;
        }
    }
}