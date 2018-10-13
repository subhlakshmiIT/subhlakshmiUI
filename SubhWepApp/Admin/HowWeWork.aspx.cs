using System;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Web.UI.WebControls;

public partial class Admin_HowWeWork : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    DBMangerClass dbm = new DBMangerClass();
    CultureInfo ci = CultureInfo.GetCultureInfo("en-IN");
    static Label lblMsg;
    static int Id;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg = this.Master.FindControl("lblMsg") as Label;
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
            Grdheading.DataSource = dt;
            Grdheading.DataBind();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.ToString();
            lblMsg.ForeColor = Color.Red;
            lblMsg.BackColor = Color.Yellow;
        }
    }
    SqlParameter[] parameters;
    string st;
    protected void btnLogin_Click(object sender, EventArgs e)
    {

        try
        {
            if (Id == 0)
            {

                st = "INSERT INTO [HowWeWork]([Heading],[Line1],[Line2],[Line3],[Line4],[Line5],[Date]) VALUES(@Heading,@Line1,@Line2,@Line3,@Line4,@Line5,@Date)";
                
                parameters = new SqlParameter[]
             {
                  new SqlParameter("@Heading",txtHeading.Text),
                   new SqlParameter("@Line1",txtLine1.Text),
                                      new SqlParameter("@Line2",txtLine2.Text),
                                      new SqlParameter("@Line3",txtLine3.Text),
                   new SqlParameter("@Line4",txtLine4.Text),
                    new SqlParameter("@Line5",txtLine5.Text),
                    new SqlParameter("@Date",DateTime.Parse(DateTime.Now.ToShortDateString(),ci))



             };

            }
            else
            {
                st = "Update [HowWeWork] set [Heading]=@Heading,[Line1]=@Line1,[Line2]=@Line2,[Line3]=@Line3,[Line4]=@Line4,[Line5]=@Line5,[Date]=@Date where Id=@Id";

                parameters = new SqlParameter[]
           {
                new SqlParameter("@Id",Id),
                 new SqlParameter("@Heading",txtHeading.Text),
                  new SqlParameter("@Line1",txtLine1.Text),
                                      new SqlParameter("@Line2",txtLine2.Text),
                                      new SqlParameter("@Line3",txtLine3.Text),
                   new SqlParameter("@Line4",txtLine4.Text),
                    new SqlParameter("@Line5",txtLine5.Text),
                    new SqlParameter("@Date",DateTime.Parse(DateTime.Now.ToShortDateString(),ci))


           };

            }


            bool insert = dbm.ExecuteNonQuery(st, CommandType.Text, parameters);

            if (insert)
            {
                FillData();
                RefreshControl();
                lblMsg.Text = "Data Saved Successfully..........";
                lblMsg.ForeColor = Color.Green;
                lblMsg.BackColor = Color.Yellow;

            }


        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.ToString();
            lblMsg.ForeColor = Color.Red;
            lblMsg.BackColor = Color.Yellow;

        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            LinkButton lnkRemove = (LinkButton)sender;
            Id = int.Parse(lnkRemove.CommandArgument);




            string st = "delete [HowWeWork] where Id=@Id";

            SqlParameter[] parameters = new SqlParameter[]
        {
                  new SqlParameter("@Id",Id)



        };


            bool IsDeleted = dbm.ExecuteNonQuery(st, CommandType.Text, parameters);
            if (IsDeleted)
            {
                FillData();
                RefreshControl();
                lblMsg.Text = "Record Deleted Successfully !!!";
                lblMsg.ForeColor = Color.Green;
                lblMsg.BackColor = Color.Yellow;

            }
            else
            {
                lblMsg.Text = "Some error occure !!!";
                lblMsg.ForeColor = Color.Red;
                lblMsg.BackColor = Color.Yellow;
            }


        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.ToString();
            lblMsg.ForeColor = Color.Red;
            lblMsg.BackColor = Color.Yellow;

        }
    }
    public void RefreshControl()
    {       
        txtLine1.Text = "";
        txtLine2.Text = "";
        txtLine3.Text = "";
        txtLine4.Text = "";
        txtLine5.Text = "";
        txtHeading.Text = "";       
        lblMsg.Text = "";
        Id = 0;
    }

    protected void btnSelect_Click(object sender, EventArgs e)
    {
        try
        {
            lblMsg.Text = "";
            LinkButton lnkRemove = (LinkButton)sender;
            Id = int.Parse(lnkRemove.CommandArgument);
            string st = "select * from [HowWeWork] where Id=@Id";

            SqlParameter[] parameters = new SqlParameter[]
        {
                  new SqlParameter("@Id",Id)



        };
            dt = dbm.ExecuteParameterizedSelectCommand(st, CommandType.Text, parameters);
            
            
            txtHeading.Text = dt.Rows[0]["Heading"].ToString();
            txtLine1.Text= dt.Rows[0]["Line1"].ToString();
            txtLine2.Text = dt.Rows[0]["Line2"].ToString();
            txtLine3.Text = dt.Rows[0]["Line3"].ToString();
            txtLine4.Text = dt.Rows[0]["Line4"].ToString();
            txtLine5.Text = dt.Rows[0]["Line5"].ToString();

        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.ToString();
            lblMsg.ForeColor = Color.Red;

        }
    }





    protected void btnReset_Click(object sender, EventArgs e)
    {
        RefreshControl();
    }

   
}