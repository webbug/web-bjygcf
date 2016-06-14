using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SQLite;
using System.Data;

public partial class admin_about_rlzy_ad : System.Web.UI.Page
{
    string zp_zw, zp_rs, zp_lx, zp_dq, zp_qd, zp_gw, zp_rz, id,zp_bm;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["zpid"];
        if (!IsPostBack)
        {
            if (id !=null)
            {
                selectzp();
                Btn_add.Visible = false;
            }
            else
            {
                Btn_update.Visible = false;
            }
        }      
    }
    protected void Btn_add_Click(object sender, EventArgs e)
    {
        getStr();
        insertzp();
        Response.Write("<script>alert('录入成功！');history.go(-1)</script>");
    }
    protected void selectzp()
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "select zp_zw,zp_rs,zp_lx,zp_dq,zp_bm,zp_qd,zp_gw,zp_rz from bjygcf_rc where id='" + id + "'";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        zw.Text = sdr["zp_zw"].ToString();
        rs.Text=sdr["zp_rs"].ToString();
        lx.Text=sdr["zp_lx"].ToString();
        dq.Text=sdr["zp_dq"].ToString();
        dropdown.SelectedValue=sdr["zp_qd"].ToString();
        gw.Value=sdr["zp_gw"].ToString();
        rz.Value=sdr["zp_rz"].ToString();
        bm.Text=sdr["zp_bm"].ToString();
        sdr.Close();
        conn.Clone();
        conn.Dispose();
    }
    protected void getStr() {
        zp_zw = zw.Text;
        zp_rs = rs.Text;
        zp_lx = lx.Text;
        zp_dq = dq.Text;
        zp_qd = dropdown.SelectedValue;
        zp_gw = gw.Value;
        zp_rz = rz.Value;
        zp_bm = bm.Text;
    }
    protected void insertzp()
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "insert into bjygcf_rc (zp_zw,zp_rs,zp_lx,zp_dq,zp_gw,zp_rz,zp_bm,zp_qd)" +
            "values('" + zp_zw + "','" + zp_rs + "','" + zp_lx + "','" + zp_dq + "','" + zp_gw + "','" + zp_rz + "','"+zp_bm+"','"+zp_qd+"')";
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
        // Response.Write("<script>alert('您的信息已提交成功，我们会在一个工作日内与您取得联系！');history.go(-1)</script>");
        conn.Clone();
        conn.Dispose();
    }
    protected void updatezp(string zp_zw, string zp_rs, string zp_lx, string zp_dq, string zp_qd, string zp_gw, string zp_rz, string zp_bm)
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "UPDATE bjygcf_rc set zp_zw='" + zp_zw + "',zp_rs='" + zp_rs + "',zp_lx='" + zp_lx + "',zp_dq='" + zp_dq + "',zp_qd='" + zp_qd + 
            "',zp_gw='"+zp_gw+"',zp_rz='"+zp_rz+"',zp_bm='"+zp_bm+"' where  id='" + id + "'";
        cmd.Connection = conn;
        //cmd.ExecuteNonQuery();
         try
        {
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
    }

    protected void Btn_update_Click(object sender, EventArgs e)
    {
        getStr();
        updatezp(zp_zw,zp_rs,zp_lx,zp_dq,zp_qd,zp_gw,zp_rz,zp_bm);
    }
}