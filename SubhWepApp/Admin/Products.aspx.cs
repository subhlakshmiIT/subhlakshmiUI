using System;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Web.UI.WebControls;

public partial class Admin_Products : System.Web.UI.Page
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
            string st = "SELECT * FROM Products";
            dt =dbm.ExecuteSelectCommand(st, CommandType.Text);
            Grdheading.DataSource = dt;
            Grdheading.DataBind();
        }
        catch(Exception ex)
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

               st = "insert into [Products]([Heading],[LoanName],[LoanAmt],[TypicalTenour],[Description])values(@Heading,@LoanName,@LoanAmt,@TypicalTenour,@Description)";

               parameters = new SqlParameter[]
            {
                  new SqlParameter("@Heading",txtHeading.Text),
                   new SqlParameter("@LoanName",txtloanName.Text),
                                      new SqlParameter("@LoanAmt",decimal.Parse(txtAmtUpto.Text)),
                                      new SqlParameter("@TypicalTenour",txtTenour.Text),
                   new SqlParameter("@Description",txtDescription.Text),


            };

            }
            else
            {
                st = "Update [Products] set [Heading]=@Heading,[LoanName]=@LoanName,[LoanAmt]=@LoanAmt,[TypicalTenour]=@TypicalTenour,[Description]=@Description where Id=@Id";
                  
                parameters = new SqlParameter[]
           {
                new SqlParameter("@Id",Id),
                  new SqlParameter("@Heading",txtHeading.Text),
                   new SqlParameter("@LoanName",txtloanName.Text),
                                      new SqlParameter("@LoanAmt",decimal.Parse(txtAmtUpto.Text)),
                                      new SqlParameter("@TypicalTenour",txtTenour.Text),
                   new SqlParameter("@Description",txtDescription.Text),


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




            string st = "delete [Products] where Id=@Id";

            SqlParameter[] parameters = new SqlParameter[]
        {
                  new SqlParameter("@Id",Id)
                   


        };


            bool IsDeleted =dbm.ExecuteNonQuery(st, CommandType.Text, parameters);
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
        txtDescription.Text = "";
        txtAmtUpto.Text = "";
        txtHeading.Text = "";
        txtloanName.Text = "";
        txtTenour.Text = "";
        Id = 0;
        


    }

    protected void btnSelect_Click(object sender, EventArgs e)
    {
        try
        {
            lblMsg.Text = "";
            LinkButton lnkRemove = (LinkButton)sender;
            Id = int.Parse(lnkRemove.CommandArgument);
            string st = "select * from [Products] where Id=@Id";

            SqlParameter[] parameters = new SqlParameter[]
        {
                  new SqlParameter("@Id",Id)



        };
            dt = dbm.ExecuteParameterizedSelectCommand(st, CommandType.Text, parameters);
            //ddlLocation.SelectedValue = dt.Rows[0]["LocationId"].ToString();
            txtDescription.Text = dt.Rows[0]["Description"].ToString();
            txtAmtUpto.Text = dt.Rows[0]["LoanAmt"].ToString();
            txtHeading.Text = dt.Rows[0]["Heading"].ToString();
            txtloanName.Text = dt.Rows[0]["LoanName"].ToString();
            txtTenour.Text = dt.Rows[0]["TypicalTenour"].ToString();
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