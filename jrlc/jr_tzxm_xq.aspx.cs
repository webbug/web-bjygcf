using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SQLite;

public partial class jrlc_jr_tzxm_xq : System.Web.UI.Page
{
    SQLiteDataReader sdr;
    SQLiteConnection conn;
    SQLiteCommand cmd;
    string id;
    protected string name, jine, shouyi, zhouqi, huankuan, zhuangtai, context,rengou,leixing,fxtime;
    protected void Page_Load(object sender, EventArgs e)
    {

       id = Request.QueryString["jrtzid"];
       if (id == null || id == "") {
           id = "1";
       }
       getTz();
    }
    protected void getTz() {
        SQLiteConnection.ClearAllPools();
        conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        cmd = new SQLiteCommand();
        cmd.CommandText = "select * from bjygcf_lccp where id='" + id + "'";
        cmd.Connection = conn;
        sdr = cmd.ExecuteReader();
        name = sdr["name"].ToString();
        jine = sdr["jine"].ToString();
        shouyi = sdr["shouyi"].ToString();
        zhouqi = sdr["zhouqi"].ToString();
        huankuan = sdr["huankuan"].ToString();
        zhuangtai = sdr["zhuangtai"].ToString();
        context = sdr["context"].ToString();
        rengou = sdr["rengou"].ToString();
        leixing = sdr["leixing"].ToString();
        fxtime = sdr["time"].ToString();
        sdr.Close();
        conn.Clone();
        conn.Dispose();
    }
    protected void closeSql()
    {
        sdr.Close();
        conn.Clone();
        conn.Dispose();
    }

}