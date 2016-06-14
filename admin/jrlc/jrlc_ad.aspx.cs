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
    string name,jine,shouyi,zhouqi,huankuan,zhuangtai,context,showid, id,rengou,leixing,time;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["jrid"];
        if (!IsPostBack)
        {
            if (id !=null)
            {
                selectjr();
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
    protected void selectjr()
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "select * from bjygcf_lccp where id='" + id + "'";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        cp_name.Text = sdr["name"].ToString();
        cp_jine.Text=sdr["jine"].ToString();
        cp_shouyi.Text=sdr["shouyi"].ToString();
        cp_zhouqi.Text=sdr["zhouqi"].ToString();
        dropdown.SelectedValue=sdr["zhuangtai"].ToString();
        cp_context.Value=sdr["context"].ToString();
        cp_huankuan.Text=sdr["huankuan"].ToString();
        cp_showid.Text = sdr["showid"].ToString();
        cp_rengou.Text = sdr["rengou"].ToString();
        cp_time.Text = sdr["time"].ToString();
        cp_leixing.Text = sdr["leixing"].ToString();
        sdr.Close();
        conn.Clone();
        conn.Dispose();
    }
    protected void getStr() {
        name = cp_name.Text;
        jine=cp_jine.Text;
        shouyi = cp_shouyi.Text;
        zhouqi = cp_zhouqi.Text;
        zhuangtai = dropdown.SelectedValue;
        context = cp_context.Value;
        huankuan = cp_huankuan.Text;
        showid = cp_showid.Text;
        time = cp_time.Text;
        rengou = cp_rengou.Text;
        leixing = cp_leixing.Text;

    }
    protected void insertzp()
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "insert into bjygcf_lccp (name,jine,shouyi,zhouqi,huankuan,zhuangtai,context,showid,rengou,time,leixing)" +
            "values('" + name + "','" + jine + "','" + shouyi + "','" + zhouqi + "','" + huankuan + "','" + zhuangtai + "','" + context + "','" + showid + "','" + rengou + "','" + time + "','" +leixing+ "')";
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
        // Response.Write("<script>alert('您的信息已提交成功，我们会在一个工作日内与您取得联系！');history.go(-1)</script>");
        conn.Clone();
        conn.Dispose();
    }
    protected void updatezp(string na, string ji, string shou, string zhou, string huan, string zhuang, string con,string ren,string time,string lei)
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "UPDATE bjygcf_lccp set name='" + na + "',jine='" +ji + "',shouyi='" + shou + "',zhouqi='" + zhou + "',huankuan='" + huan + 
            "',zhuangtai='"+zhuang+"',context='"+con+"',showid='"+showid+"',rengou='"+ren+"',time='"+time+"',leixing='"+lei+"' where  id='" + id + "'";
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
        updatezp(name,jine,shouyi,zhouqi,huankuan,zhuangtai,context,rengou,time,leixing);
    }
}