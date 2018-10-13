using System;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;

public partial class Admin_Login : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    DBMangerClass dbm = new DBMangerClass();
    CultureInfo ci = CultureInfo.GetCultureInfo("en-IN");
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string stAdm = "select * from  AdminLogin where Username=@Username and Password=@Password";
        SqlParameter[] parameters = new SqlParameter[]
        {
                  new SqlParameter("@Username", txtUsername.Text.Trim()),
                  new SqlParameter("@Password", txtPwd.Text.Trim())

        };
        dt = dbm.ExecuteParameterizedSelectCommand(stAdm, CommandType.Text, parameters);
        if (dt.Rows.Count > 0)
        {
            Session.Add("userNM", txtUsername.Text.Trim());
            Session.Timeout = 1440;
            Response.Redirect("WelcomeAdmin.aspx");
        }

        else
        {
            txtUsername.Text = "";
            lblMsg.Text = "User Name And Passwoed Not Match..";
            lblMsg.ForeColor = Color.Red;
            //lblMsg.BackColor = Color.Yellow;

        }
    }



    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtUsername.Text = "";
        txtPwd.Text = "";
        lblMsg.Text = "";
    }
}