using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SQLite;

public partial class swly_ly_index : System.Web.UI.Page
{
    protected List<Lyxl> listn = new List<Lyxl>();
    protected List<Lyxl> listw = new List<Lyxl>();
    protected List<Lyxl> listg = new List<Lyxl>();
    protected void Page_Load(object sender, EventArgs e)
    {
        getGn();
        getHw();
        getHg();
    }
    protected void getGn() {
      
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "select id,name,hprice,dq,country,zst from bjygcf_lyxl where country='国内线路' order by  showid desc limit 0,7";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        while (sdr.Read()) {
            Lyxl ly = new Lyxl();
            ly.Id = sdr.GetValue(0).ToString();
            ly.Name = sdr.GetValue(1).ToString();
            ly.Hprice = sdr.GetValue(2).ToString();
            ly.Dq = sdr.GetValue(3).ToString();
            ly.Zst = sdr.GetValue(5).ToString();
            listn.Add(ly);
        }    
        sdr.Close();
        conn.Clone();
        conn.Dispose();
    }
    protected void getHw() {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "select id,name,hprice,dq,country,zst from bjygcf_lyxl where country='国外线路' order by  showid desc limit 0,7";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        while (sdr.Read())
        {
            Lyxl ly = new Lyxl();
            ly.Id = sdr.GetValue(0).ToString();
            ly.Name = sdr.GetValue(1).ToString();
            ly.Hprice = sdr.GetValue(2).ToString();
            ly.Dq = sdr.GetValue(3).ToString();
            ly.Zst = sdr.GetValue(5).ToString();
            listw.Add(ly);
        }
        sdr.Close();
        conn.Clone();
        conn.Dispose();
    }
    protected void getHg()
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "select id,name,hprice,dq,country,zst from bjygcf_lyxl where country='港澳台线路' order by  showid desc limit 0,7";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        while (sdr.Read())
        {
            Lyxl ly = new Lyxl();
            ly.Id = sdr.GetValue(0).ToString();
            ly.Name = sdr.GetValue(1).ToString();
            ly.Hprice = sdr.GetValue(2).ToString();
            ly.Dq = sdr.GetValue(3).ToString();
            ly.Zst = sdr.GetValue(5).ToString();
            listg.Add(ly);
        }
        sdr.Close();
        conn.Clone();
        conn.Dispose();
    }
}