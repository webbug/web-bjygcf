using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SQLite;

public partial class admin_about_yjfk_ab : System.Web.UI.Page
{
    string wdid;
    protected string wtitle, wphone, wname, wtime, wisshow, wshowid, wsolution;
    protected void Page_Load(object sender, EventArgs e)
    {
        wdid=Request.QueryString["wdid"];
        if (!IsPostBack)
        { 
            getWd();
        }
       
    }
    protected void Btn_Wd_Click(object sender, EventArgs e)
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "update bjygcf_wenda set isshow='" + DropDownList1.SelectedValue + "',showid='" + TextBox1.Text + "',solution='" + TextBox2.Text + "' where id='" + wdid + "'";
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
      try{
            int rr = cmd.ExecuteNonQuery();
            if (rr > 0)
            {
                Response.Write("<script>alert('提交成功！！！');history.go(-1)</script>");
            }
            else
            {
                Response.Write("<script>alert('操作失败！！！');history.go(-1)</script>");
            }
        }
        catch
        {
            Response.Write("<script>alert('操作失败！！！');history.go(-1)</script>");
        }
        conn.Clone();
        conn.Dispose();
        getWd();
    }
    protected void getWd() {

        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "select * from bjygcf_wenda where id='" + wdid + "'";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        wtitle = sdr["title"].ToString();
        wphone = sdr["phone"].ToString();
        wname = sdr["name"].ToString();
        wtime = sdr["time"].ToString();
        wisshow = sdr["isshow"].ToString();
        wshowid = sdr["showid"].ToString();
        wsolution = sdr["solution"].ToString();
        DropDownList1.SelectedValue = wisshow;
        TextBox1.Text = wshowid;
        TextBox2.Text = wsolution;
        sdr.Close();
        conn.Clone();
        conn.Dispose(); 
    }
}