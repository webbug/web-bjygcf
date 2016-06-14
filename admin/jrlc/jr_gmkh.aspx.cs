using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SQLite;
public partial class admin_jrlc_jr_gmkh : System.Web.UI.Page
{
    string name, time, xm_name, jine, showid,id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id=Request.QueryString["gmid"];
        if (!IsPostBack) {
                if (id != "" && id != null)
                {
                    selectgm();
                    Btn_add.Visible = false;
                    Btn_up.Visible = true;
                }

        }
    }
    protected void getStr() {
        name = k_name.Text;
        time = k_time.Text;
        xm_name = k_xm_name.Text;
        jine = k_jine.Text;
        showid = k_showid.Text;
    }
    protected void Btn_add_Click(object sender, EventArgs e)
    {
        getStr();
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "insert into bjygcf_khgd (name,time,xm_name,jine,showid)" +
            "values('" + name + "','" + time + "','" + xm_name + "','" + jine + "','" + showid + "')"; ;
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('提交成功！');history.go(-1)</script>");
        conn.Clone();
        conn.Dispose();

    }
    protected void selectgm() {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "select * from bjygcf_khgd where id='" + id + "'";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        k_name.Text = sdr["name"].ToString();
        k_time.Text = sdr["time"].ToString();
        k_xm_name.Text = sdr["xm_name"].ToString();
        k_jine.Text = sdr["jine"].ToString();
        k_showid.Text = sdr["showid"].ToString();
        sdr.Close();
        conn.Clone();
        conn.Dispose();
    }
    protected void Btn_up_Click(object sender, EventArgs e)
    {
        getStr();
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "UPDATE bjygcf_khgd set name='" + name + "',time='" + time + "',xm_name='" +
            xm_name + "',jine='" + jine + "',showid='" + showid + "' where  id='" + id + "'";
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('提交成功！！！');history.go(-1)</script>");
        conn.Clone();
        conn.Dispose();
    }
}