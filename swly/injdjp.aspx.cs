using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SQLite;

public partial class swly_injdjp : System.Web.UI.Page
{
    string dname, dcity, dphone, dnumber, ddate, pname, pcity, pphone, pnumber, pdate, dtime, ptime;
    protected void Page_Load(object sender, EventArgs e)
    {
        string lx;
        lx=Request.QueryString["lx"];
        if (lx == "jd") {
            insertjd();
        }
        else if (lx == "jp")
        {
            insertjp();
        }
        else {
            Response.Write("<script>alert('系统繁忙，请重新提交！');history.go(-1)</script>");
        }
    }
    protected void insertjd()
    {
        dname = Request.Form["dlxr"].Trim();
        dcity = Request.Form["dmdd"].Trim();
        dphone = Request.Form["ddh"].Trim();
        dnumber = Request.Form["dsl"].Trim();
        ddate = Request.Form["drq"].Trim();
        dtime = DateTime.Now.ToString();
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "insert into bjygcf_jd (jdname,jdnumber,jdcity,jdphone,jddate,time)" +
            "values('" + dname + "','" + dnumber + "','" + dcity + "','" + dphone + "','" + ddate + "','" + dtime + "')";
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('您的预订信息已提交成功，我们工作人员会在一个工作日内与您取得联系！');history.go(-1)</script>");
        conn.Clone();
        conn.Dispose();

    }
    protected void insertjp() {
        pname = Request.Form["plxr"].Trim();
        pcity = Request.Form["pmdd"].Trim();
        pphone = Request.Form["pdh"].Trim();
        pnumber = Request.Form["psl"].Trim();
        pdate = Request.Form["prq"].Trim();
        ptime = DateTime.Now.ToString();
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "insert into bjygcf_jp (jpname,jpnumber,jpcity,jpphone,jpdate,time)" +
            "values('" + pname + "','" + pnumber + "','" + pcity + "','" + pphone + "','" + pdate + "','" + ptime + "')";
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('您的预订信息已提交成功，我们工作人员会在一个工作日内与您取得联系！');history.go(-1)</script>");
        conn.Clone();
        conn.Dispose();

    }
}