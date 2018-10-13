using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for DBMangerClass
/// </summary>

public class DBMangerClass
{
    SqlConnection con;
    SqlTransaction trans;
    public string CONNECTION_STRING = ConfigurationManager.ConnectionStrings["Subh_Db"].ConnectionString;

    public SqlConnection Getconnection()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Subh_Db"].ConnectionString);
        return con;
    }

    /* Retrive Data */
    /* Used to Parameter Less Command */
    public DataTable ExecuteSelectCommand(string CommandName, CommandType cmdTyp)
    {
        DataTable tbl = null;
        using (SqlConnection con = new SqlConnection(CONNECTION_STRING))
        {
            using (SqlCommand cmd = con.CreateCommand())
            {
                cmd.CommandType = cmdTyp;
                cmd.CommandText = CommandName;
                try
                {
                    if (con.State != ConnectionState.Open)
                    {
                        con.Open();
                    }
                    using (SqlDataAdapter ds = new SqlDataAdapter(cmd))
                    {
                        tbl = new DataTable();
                        ds.Fill(tbl);
                    }
                }
                catch
                {
                    throw;
                }
            }
        }
        return tbl;
    }

    /* Retrive Data */
    /* Used to Parameterized Command */
    public DataTable ExecuteParameterizedSelectCommand(string CommandName, CommandType cmdTyp, SqlParameter[] param)
    {
        DataTable tbl = null;
        using (SqlConnection con = new SqlConnection(CONNECTION_STRING))
        {
            using (SqlCommand cmd = con.CreateCommand())
            {
                cmd.CommandType = cmdTyp;
                cmd.CommandText = CommandName;
                cmd.Parameters.AddRange(param);
                try
                {
                    if (con.State != ConnectionState.Open)
                    {
                        con.Open();
                    }

                    using (SqlDataAdapter ds = new SqlDataAdapter(cmd))
                    {
                        tbl = new DataTable();
                        ds.Fill(tbl);

                    }
                }
                catch (Exception)
                {
                    throw;
                }
            }
        }
        return tbl;
    }

    /* Insert Data */
    /* Used to Parameterized Command */
    public bool ExecuteNonQuery(string CommandName, CommandType cmdTyp, SqlParameter[] pars)
    {
        int Rslt = 0;
        using (SqlConnection con = new SqlConnection(CONNECTION_STRING))
        {
            using (SqlCommand cmd = con.CreateCommand())
            {
                cmd.CommandType = cmdTyp;
                cmd.CommandText = CommandName;
                cmd.Parameters.AddRange(pars);
                try
                {
                    if (con.State != ConnectionState.Open)
                    {
                        con.Open();
                    }
                    Rslt = cmd.ExecuteNonQuery();
                }
                catch
                {
                    throw;
                }
            }
        }
        return (Rslt > 0);
    }
    public DataTable filltable(string st)
    {
        con = Getconnection();
        SqlDataAdapter objdataadapter = new SqlDataAdapter(st, con);
        DataTable objtemp = new DataTable();
        objdataadapter.Fill(objtemp);
        return objtemp;
    }
    public void ExecuteSql(String qu)
    {
        con = Getconnection();
        SqlCommand objcommand = new SqlCommand(qu, con);
        con.Open();
        objcommand.ExecuteNonQuery();
        con.Close();
    }
    public bool ExecuteSql1(String qu)
    {
        bool b = true;
        con = Getconnection();
        SqlCommand objcommand = new SqlCommand(qu, con);
        con.Open();
        int a = objcommand.ExecuteNonQuery();
        if (a != 0)
            b = true;
        else
            b = false;
        con.Close();
        return b;
    }

    public DataTable Proctable(string proc)
    {
        con = Getconnection();
        SqlCommand cmd = new SqlCommand(proc, con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter objdataadapter = new SqlDataAdapter(cmd);
        DataTable objtemp = new DataTable();
        objdataadapter.Fill(objtemp);
        return objtemp;
    }

    public int IdGenerate(String qu)
    {
        con = Getconnection();
        SqlDataAdapter objdataadpter = new SqlDataAdapter(qu, con);
        DataTable objdt = new DataTable();
        con.Open();
        objdataadpter.Fill(objdt);
        con.Close();
        int x;
        x = objdt.Rows.Count + 1;
        //x = x + 1;
        return x;

    }

    public string retWord(int number)
    {

        if (number == 0) return "Zero";

        if (number == -2147483648) return "Minus Two Hundred and Fourteen Crore Seventy Four Lakh Eighty Three Thousand Six Hundred and Forty Eight";

        int[] num = new int[4];

        int first = 0;

        int u, h, t;

        System.Text.StringBuilder sb = new System.Text.StringBuilder();

        if (number < 0)
        {

            sb.Append("Minus");

            number = -number;

        }

        string[] words0 = { "", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine" };

        string[] words = { "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen" };

        string[] words2 = { "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety" };

        string[] words3 = { "Thousand ", "Lakh", "Crore" };

        num[0] = number % 1000; // units

        num[1] = number / 1000;

        num[2] = number / 100000;

        num[1] = num[1] - 100 * num[2]; // thousands

        num[3] = number / 10000000; // crores

        num[2] = num[2] - 100 * num[3]; // lakhs



        for (int i = 3; i > 0; i--)
        {

            if (num[i] != 0)
            {

                first = i;

                break;

            }

        }

        for (int i = first; i >= 0; i--)
        {

            if (num[i] == 0) continue;

            u = num[i] % 10; // ones

            t = num[i] / 10;

            h = num[i] / 100; // hundreds

            t = t - 10 * h; // tens

            if (h > 0) sb.Append(words0[h] + "Hundred ");

            if (u > 0 || t > 0)
            {

                if (h > 0 || i == 0) sb.Append("and ");

                if (t == 0)

                    sb.Append(words0[u]);

                else if (t == 1)

                    sb.Append(words[u]);

                else

                    sb.Append(words2[t - 2] + words0[u]);

            }

            if (i != 0) sb.Append(words3[i - 1]);

        }

        return sb.ToString().TrimEnd();

    }


    public string GetDigitInWords(int i)
    {
        if (i < 1)
            return "";//"zero";
        string s = "";
        if (i.ToString().Length > 2)
        {
            i = Convert.ToInt32(i.ToString().Substring(i.ToString().Length - 2, 2));
        }
        string[] s1 = new string[] { "", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen" };
        string[] s2 = new string[] { "", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety" };
        string s3, s4;
        if (i < 20)
            s = s1[i];
        else
        {
            s3 = i.ToString().Substring(0, 1);
            s = s2[Convert.ToInt32(s3)];
            s4 = i.ToString().Substring(1, 1);
            s = s + " " + s1[Convert.ToInt32(s4)];
        }

        return s;
    }

    public string GetNoInWords(double d)
    {
        string s = "";
        //19,23,45,67,89,12,34,56,789.87
        //Rs  ....., 67 Kharab,89 Arab,12 crore, 34 lacs, 56 thousands,7 hundred, 89 and 87 paise only

        //67,89,12,34,56,789.87
        //Rs 67 Kharab,89 Arab,12 crore, 34 lacsh, 56 thousands,7 hundred, 89 and 87 paise only
        string sPaise, sTens, sHundred, sThousand, sLacs, sCrore, sArab, sKharab, sLong;
        int i;

        sLong = ((long)d).ToString();
        if (sLong.Length > 13)
        {
            //s = "Out of range value and maximum value is= ";
            sLong = sLong.Substring(sLong.Length - 13, 13);
        }
        if (sLong.Length < 13)
            sLong = sLong.PadLeft(13, '0');

        //Console.WriteLine("\nslong=" + sLong);

        sKharab = sLong.Substring(0, 2); //Kharab
        sArab = sLong.Substring(2, 2);  //arab
        sCrore = sLong.Substring(4, 2);  //Crore
        sLacs = sLong.Substring(6, 2);  //Lacs
        sThousand = sLong.Substring(8, 2); //thousands
        sHundred = sLong.Substring(10, 1); //Hundred
        sTens = sLong.Substring(11, 2); //Tens                        

        if (d.ToString().Contains("."))
            sPaise = d.ToString().Substring(d.ToString().IndexOf('.') + 1);
        else
            sPaise = "0";

        if (sPaise.Length > 2)
            sPaise = sPaise.Substring(0, 2);

        i = Convert.ToInt16(sKharab);
        if (i > 0)
            s = this.GetDigitInWords(i) + ((i > 1) ? " Kharabs " : " Kharab ");

        i = Convert.ToInt16(sArab);
        if (i > 0)
            s += this.GetDigitInWords(i) + ((i > 1) ? " Arabs " : " Arab ");

        i = Convert.ToInt16(sCrore);
        if (i > 0)
            s += this.GetDigitInWords(i) + ((i > 1) ? " Crores " : " Crore ");

        i = Convert.ToInt16(sLacs);
        if (i > 0)
            s += this.GetDigitInWords(i) + ((i > 1) ? " Lacs " : " Lac ");

        i = Convert.ToInt16(sThousand);
        if (i > 0)
            s += this.GetDigitInWords(i) + ((i > 1) ? " Thousand " : " Thousand ");

        i = Convert.ToInt16(sHundred);
        if (i > 0)
            s += this.GetDigitInWords(i) + ((i > 1) ? " Hundred " : " Hundred ");

        i = Convert.ToInt16(sTens);
        if (i > 0)
            s += this.GetDigitInWords(i) + " ";

        i = Convert.ToInt16(sPaise);
        if (i > 0)
            s += " and " + this.GetDigitInWords(i) + ((i > 0) ? " Paise " : " Paisa ");

        //s += "only";

        return s;
    }


    public int randomgen()
    {
        Random r = new Random();
        int rand = r.Next(100000, 999999);
        return rand;

    }
    public bool ExecuteSqlWithTransacton(String qu, String qu1, String qu2)
    {

        bool isExecuted = false;
        con = Getconnection();
        con.Open();
        trans = con.BeginTransaction();
        SqlCommand objcommand = new SqlCommand();
        objcommand.Connection = con;
        objcommand.Transaction = trans;
        objcommand.CommandText = qu;

        int a = objcommand.ExecuteNonQuery();
        if (a > 0)
        {
            objcommand.CommandText = qu1;
            int b = objcommand.ExecuteNonQuery();
            if (b > 0)
            {

                objcommand.CommandText = qu2;
                int c = objcommand.ExecuteNonQuery();
                if (c > 0)
                {
                    isExecuted = true;
                    trans.Commit();
                }
                else
                {
                    trans.Rollback();
                    isExecuted = false;
                }

            }
            else
            {
                trans.Rollback();
                isExecuted = false;
            }

        }
        else
        {
            trans.Rollback();
            isExecuted = false;
        }
        con.Close();
        return isExecuted;
    }

    public bool ExecuteSqlWithTransactonForFour(String qu, String qu1, String qu2, String qu3)
    {
        try
        {
            bool isExecuted = false;
            con = Getconnection();
            con.Open();
            trans = con.BeginTransaction();
            SqlCommand objcommand = new SqlCommand();
            objcommand.Connection = con;
            objcommand.Transaction = trans;
            objcommand.CommandText = qu;

            int a = objcommand.ExecuteNonQuery();
            if (a > 0)
            {
                objcommand.CommandText = qu1;
                int b = objcommand.ExecuteNonQuery();
                if (b > 0)
                {
                    objcommand.CommandText = qu2;
                    int c = objcommand.ExecuteNonQuery();
                    if (c > 0)
                    {
                        objcommand.CommandText = qu3;
                        int d = objcommand.ExecuteNonQuery();
                        if (d > 0)
                        {
                            isExecuted = true;
                            trans.Commit();
                        }
                        else
                        {
                            trans.Rollback();
                            isExecuted = false;
                        }
                    }
                    else
                    {
                        trans.Rollback();
                        isExecuted = false;
                    }
                }
                else
                {
                    trans.Rollback();
                    isExecuted = false;
                }

            }
            else
            {
                trans.Rollback();
                isExecuted = false;
            }
            con.Close();
            return isExecuted;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

}
