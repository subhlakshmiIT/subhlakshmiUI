using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Testimonial : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    static DataTable dtDes = new DataTable();
    DBMangerClass dbm = new DBMangerClass();
    CultureInfo ci = CultureInfo.GetCultureInfo("en-IN");
    static Label lblMsg;
    static int Id;
    string currentDate = DateTime.Now.ToString("dd/MM/yyyy");
    protected void Page_Load(object sender, EventArgs e)
    {
        
        lblMsg = this.Master.FindControl("lblMsg") as Label;
        if (!IsPostBack)
        {
            txtDate.Text = currentDate;

            FillUserPicData();
        }
    }


    public void FillUserPicData()
    {
        try
        {
            string st = "SELECT * FROM Testimonial";
            dt = dbm.ExecuteSelectCommand(st, CommandType.Text);
            GrdUserImage.DataSource = dt;
            GrdUserImage.DataBind();
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




            string st = "delete [Testimonial] where Id=@Id";

            SqlParameter[] parameters = new SqlParameter[]
        {
                  new SqlParameter("@Id",Id)



        };


            bool IsDeleted = dbm.ExecuteNonQuery(st, CommandType.Text, parameters);
            if (IsDeleted)
            {

                FillUserPicData();
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
        URL1 = "";
        txtName.Text = "";
        // ImgUser.ImageUrl = null;
        txtDescription.Text = "";
        Id = 0;
    }


    protected void btnSelect_Click(object sender, EventArgs e)
    {
        try
        {
            lblMsg.Text = "";
            LinkButton lnkRemove = (LinkButton)sender;
            Id = int.Parse(lnkRemove.CommandArgument);
            string st = "select * from [Testimonial] where Id=@Id";

            SqlParameter[] parameters = new SqlParameter[]
        {
                  new SqlParameter("@Id",Id)
        };
            dt = dbm.ExecuteParameterizedSelectCommand(st, CommandType.Text, parameters);
            txtName.Text = dt.Rows[0]["Name"].ToString();
            txtDate.Text = DateTime.Parse(dt.Rows[0]["Date"].ToString()).ToString("dd/MM/yyyy");

            txtDesignation.Text = dt.Rows[0]["Designation"].ToString();
            txtDescription.Text = dt.Rows[0]["Description"].ToString();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.ToString();
            lblMsg.ForeColor = Color.Red;

        }
    }
    static byte[] imgbyte;
    public static string URL1;



    SqlParameter[] parameters;
    string st;

    protected void btnPicSubmit_Click(object sender, EventArgs e)
    {
        try
        {

            if (Id == 0)
            {

                st = "insert into [Testimonial]([Date],[Name],[Description],[Designation])values(@Date,@Name,@Description,@Designation)";

                parameters = new SqlParameter[]
               {
                  new SqlParameter("@Date",DateTime.Parse(txtDate.Text,ci)),
                   new SqlParameter("@Description",txtDescription.Text),
                  new SqlParameter("@Name",txtName.Text),
                   new SqlParameter("@Designation",txtDesignation.Text),

               };

            }
            else
            {
                st = "Update [Testimonial] set [Date]=@Date,[Description]=@Description,[Designation]=@Designation,[Name]=@Name where Id=@Id";

                parameters = new SqlParameter[]
              {
                   new SqlParameter("@Id",Id),
                  new SqlParameter("@Date",DateTime.Parse(txtDate.Text,ci)),
                   new SqlParameter("@Description",txtDescription.Text),
                  new SqlParameter("@Name",txtName.Text),
                   new SqlParameter("@Designation",txtDesignation.Text),


              };

            }


            bool insert = dbm.ExecuteNonQuery(st, CommandType.Text, parameters);

            if (insert)
            {

                FillUserPicData();
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

    protected void btnPicReset_Click(object sender, EventArgs e)
    {
        RefreshControl();
    }

   
}