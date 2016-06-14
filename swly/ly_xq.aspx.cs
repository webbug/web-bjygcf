using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SQLite;

public partial class admin_swly_ly_xq : System.Web.UI.Page
{
    string xqid,dyid;
    protected SQLiteDataReader sdr;
    protected SQLiteDataReader sdr1;
    SQLiteConnection conn;
    SQLiteCommand cmd;
    SQLiteCommand cmd1;
    protected  List<Xq> list = new List<Xq>();
    protected void Page_Load(object sender, EventArgs e)
    {
        xqid = Request.QueryString["xqid"];
        getXq();
        getXqC();
        if (xqid != null||xqid!="")
        {
            SqlDataSource2.SelectCommand = "select * from bjygcf_lyxl  where name like '%" + sdr["name"].ToString() + "%' or dq like '%" + sdr["dq"].ToString() + "%' limit 0,6";
            SqlDataSource3.SelectCommand = "select * from bjygcf_lyxl  where name like '%" + sdr["name"].ToString() + "%' or dq like '%" + sdr["dq"].ToString() + "%' limit 0,4";
        }
    }
    protected void getXq() {
        SQLiteConnection.ClearAllPools();
        conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        cmd = new SQLiteCommand();
        cmd.CommandText = "select * from bjygcf_lyxl where id='"+xqid+"'";
        cmd.Connection = conn;
        sdr = cmd.ExecuteReader();
        dyid=sdr["xq"].ToString();
        
    }
    protected void closeSql() {
        sdr1.Close();
        sdr.Close();
        conn.Clone();
        conn.Dispose();
    }
    protected void getXqC()
    {
        SQLiteConnection.ClearAllPools();
        conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        cmd1 = new SQLiteCommand();
        cmd1.CommandText = "select * from lyxl_xq where dyid='" + dyid + "'";
        cmd1.Connection = conn;
        sdr1 = cmd1.ExecuteReader();
        while (sdr1.Read())
        {
            Xq xq = new Xq();
            xq.Id = sdr1.GetValue(0).ToString();
            xq.Day = sdr1.GetValue(1).ToString();
            xq.Title = sdr1.GetValue(2).ToString();
            xq.Food = sdr1.GetValue(3).ToString();
            xq.Hotel = sdr1.GetValue(4).ToString();
            xq.Context = sdr1.GetValue(5).ToString();
            xq.Id = sdr1.GetValue(6).ToString();
            xq.Img1 = sdr1.GetValue(7).ToString();
            xq.Img2 = sdr1.GetValue(8).ToString();
            list.Add(xq);
        }    

    }
}