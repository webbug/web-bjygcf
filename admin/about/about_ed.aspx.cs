using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SQLite;
using System.Data;

public partial class admin_about_news_ad : System.Web.UI.Page
{
    string ab_jj,ab_wh,ab_jg,ab_hb,id;
      protected void Page_Load(object sender, EventArgs e)
    {
        id = "1";// Request.QueryString["abid"];
        if (!IsPostBack)
        {
            selectab();
        } 
        
    }
    protected void selectab()
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "select ab_jj,ab_wh,ab_jg,ab_hb from bjygcf_ab where id='" + id + "'";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        jj.Value = sdr["ab_jj"].ToString();
        wh.Value=sdr["ab_wh"].ToString();
        hb.Value = sdr["ab_hb"].ToString();
        Image1.ImageUrl = "~/about/images/" + sdr["ab_jg"].ToString();
        sdr.Close();
        conn.Clone();
        conn.Dispose();
    }
    protected void getStr() {
        ab_jj = jj.Value;
        ab_wh = wh.Value;
        ab_hb = hb.Value;
    }
    protected void updatezp(string ab_jj, string ab_wh, string ab_hb)
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "UPDATE bjygcf_ab set ab_jj='" + ab_jj + "',ab_wh='" + ab_wh + "',ab_hb='" + ab_hb + "' where  id='" + id + "'";
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
        updatezp(ab_jj,ab_wh,ab_hb);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string temurl;
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "select ab_jg from bjygcf_ab where id='" + id + "'";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        temurl = sdr["ab_jg"].ToString();
        sdr.Close();
        conn.Clone();
        conn.Dispose();
        if (this.upimg.PostedFile != null && upimg.PostedFile.FileName.Length != 0)
        {
            string rarName = upimg.PostedFile.FileName;
            int j = rarName.LastIndexOf(".");
            string rarnewext = rarName.Substring(j);
            if (rarnewext != ".jpg" && rarnewext != ".gif" && rarnewext != ".png" && rarnewext != ".jpeg" && rarnewext != ".PNG" && rarnewext != ".JPG" && rarnewext != ".GIF" && rarnewext != ".JPEG")
            {
                Response.Write("<script>alert('图片格式错误，支持jpg,gif,png,jpeg格式！');history.go(-1)</script>");
                Response.End();
            }

            upimg.PostedFile.SaveAs(Server.MapPath("~" + "/about/images/" + temurl));
        }
        else
        {
            Response.Write("<script>alert('请先上传图片！');history.go(-1)</script>");
        }
    }
}