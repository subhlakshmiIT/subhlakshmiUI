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

public partial class Admin_Clients : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    static DataTable dtDes = new DataTable();
    DBMangerClass dbm = new DBMangerClass();
    CultureInfo ci = CultureInfo.GetCultureInfo("en-IN");
    static Label lblMsg;
    static int Id;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg = this.Master.FindControl("lblMsg") as Label;
        if (!IsPostBack)
        {

            FillUserPicData();
        }
    }


    public void FillUserPicData()
    {
        try
        {
            string st = "SELECT * FROM Client";
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




            string st = "delete [Client] where Id=@Id";

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
        txtFooterTitle.Text = "";
        ImgUser.ImageUrl = null;
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
            string st = "select * from [Client] where Id=@Id";

            SqlParameter[] parameters = new SqlParameter[]
        {
                  new SqlParameter("@Id",Id)
        };
            dt = dbm.ExecuteParameterizedSelectCommand(st, CommandType.Text, parameters);
            txtFooterTitle.Text = dt.Rows[0]["Name"].ToString();
            URL1 = "data:image/png;base64," + Convert.ToBase64String((byte[])dt.Rows[0]["CustomerImage"]);
            ImgUser.ImageUrl = URL1;
            imgbyte = (byte[])dt.Rows[0]["CustomerImage"];
            txtDescription.Text = dt.Rows[0]["Desig_Org"].ToString();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.ToString();
            lblMsg.ForeColor = Color.Red;

        }
    }
    static byte[] imgbyte;
    public static string URL1;
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            int length = FileUpload1.PostedFile.ContentLength;
            imgbyte = new byte[length];
            HttpPostedFile img = FileUpload1.PostedFile;
            //set the binary data
            img.InputStream.Read(imgbyte, 0, length);
            // ImgUser.ImageUrl = imgbyte;
            URL1 = "data:image/png;base64," + Convert.ToBase64String(imgbyte);
            ImgUser.ImageUrl = URL1;
            lblImgMsg.Visible = false;
            lblMsg.Text = "";
        }
    }


    SqlParameter[] parameters;
    string st;

    protected void btnPicSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (URL1 == null)
            {
                lblImgMsg.Visible = true;
                return;
            }
            else
            {

                lblImgMsg.Visible = false;
            }

            if (Id == 0)
            {

                st = "insert into [Client]([CustomerImage],[Name],[Desig_Org])values(@CustomerImage,@Name,@Desig_Org)";

                parameters = new SqlParameter[]
               {
                  new SqlParameter("@CustomerImage",imgbyte),
                   new SqlParameter("@Desig_Org",txtDescription.Text),
                  new SqlParameter("@Name",txtFooterTitle.Text),

               };

            }
            else
            {
                st = "Update [Client] set [CustomerImage]=@CustomerImage,[Name]=@Name,[Desig_Org]=@Desig_Org where Id=@Id";

                parameters = new SqlParameter[]
              {
                   new SqlParameter("@Id",Id),
                  new SqlParameter("@CustomerImage",imgbyte),
                   new SqlParameter("@Desig_Org",txtDescription.Text),
                  new SqlParameter("@Name",txtFooterTitle.Text),


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