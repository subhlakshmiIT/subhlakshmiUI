using System;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Web.UI.WebControls;

public partial class Admin_ChangePassword : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    DBMangerClass dbm = new DBMangerClass();
    CultureInfo ci = CultureInfo.GetCultureInfo("en-IN");
   static Label lblMsg;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg = this.Master.FindControl("lblMsg") as Label;
        if (IsPostBack)
        {

            // lblMsg.Text = "Hello";

             Label masterlbl = (Label)Master.FindControl("lblMsg");

            // TextBox mastertxt = (TextBox)Master.FindControl("txtMaster");
            //if (!(String.IsNullOrEmpty(txtPwd.Text.Trim())))
            //{

            //}
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
           // select* from  AdminLogin where Username = @Username and Password = @Password

            string st = "update AdminLogin set Password=@Pwd where Username =@userName";

            SqlParameter[] parameters = new SqlParameter[]
        {
                  new SqlParameter("@userName",txtUsername.Text),
                   new SqlParameter("@Pwd",txtNewPwd.Text),

        };


            bool insert = dbm.ExecuteNonQuery(st, CommandType.Text, parameters);
            if (insert)
            {
               txtUsername.Text = "";
               txtPwd.Text = "";
                txtPwd.Attributes["value"] = "";
               txtconpwd.Enabled = false;
                txtNewPwd.Enabled = false;
                lblMsg.Text = "Password Change Successfully..........";
                lblMsg.ForeColor = Color.Green;

            }


        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.ToString();

        }
    }

    protected void txtPwd_TextChanged(object sender, EventArgs e)
    {
        try
        {


            string seluser = "select * from  AdminLogin where Username=@Username and Password=@Password ";
            SqlParameter[] parameters = new SqlParameter[]
        {
                  new SqlParameter("@Username",txtUsername.Text),
                   new SqlParameter("@Password",txtPwd.Text),

        };
            dt =dbm.ExecuteParameterizedSelectCommand(seluser, CommandType.Text, parameters);

            if (dt.Rows.Count <= 0)
            {
                lblMsg.Text = " Admin Name And Password Not Match !!!!";
                lblMsg.ForeColor = Color.Red;
                lblMsg.BackColor = Color.Yellow;
                txtconpwd.Enabled = false;
                txtNewPwd.Enabled = false;
                txtPwd.Attributes["value"] = "";
            }
            else
            {
                txtPwd.Attributes["value"] = txtPwd.Text;
                lblMsg.Text = "";
             txtconpwd.Enabled = true;
                txtNewPwd.Enabled = true;
            }
        }
        catch (Exception ex)
        {
           lblMsg.Text = ex.ToString();
           lblMsg.ForeColor = Color.Red;
            lblMsg.BackColor = Color.Yellow;

        }
    }
}