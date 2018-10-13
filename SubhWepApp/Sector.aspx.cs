using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sector : System.Web.UI.Page
{
    static DataTable dtDes = new DataTable();
    DBMangerClass dbm = new DBMangerClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            FillData();
            FillPics();

        }
    }
    public void FillData()
    {
        try
        {
            string st = "SELECT Description FROM Sectors";
            dtDes = dbm.ExecuteSelectCommand(st, CommandType.Text);
            RptDescription.DataSource = dtDes;
            RptDescription.DataBind();
           
        }
        catch (Exception ex)
        {
            
        }
    }

    public void FillPics()
    {
        try
        {
            string st = "SELECT * FROM SectorsPics";
            dtDes = dbm.ExecuteSelectCommand(st, CommandType.Text);
            RptPics.DataSource = dtDes;
            RptPics.DataBind();

        }
        catch (Exception ex)
        {

        }
    }
}